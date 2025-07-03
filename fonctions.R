
# Pour chaque variable, déterminer le meilleur k pour l'imputation
trouver_meilleur_k_par_variable <- function(df, k_max = 10, seed = 123, min_complete = 20) {
  set.seed(seed)
  best_k_results <- list()
  
  # Identifier les colonnes avec NA
  na_vars <- names(df)[colSums(is.na(df)) > 0]
  
  for (var in na_vars) {
    complete_col <- na.omit(df[[var]])
    n <- length(complete_col)
    
    # Sauter les variables avec trop peu de données complètes
    if (n < min_complete) {
      best_k_results[[var]] <- NA
      next
    }
    
    errors <- numeric(k_max)
    
    for (k in 1:k_max) {
      mask <- sample(1:n, size = floor(0.1 * n))
      temp <- complete_col
      original <- temp[mask]
      temp[mask] <- NA
      
      # Ajout d'une colonne factice pour éviter le bug kNN
      temp_df <- data.frame(val = temp, dummy = 1)
      
      # Imputation
      imputed <- tryCatch({
        kNN(temp_df, variable = "val", k = k, imp_var = FALSE)
      }, error = function(e) {
        return(NULL)
      })
      
      if (is.null(imputed)) {
        errors[k] <- Inf
      } else {
        errors[k] <- rmse(original, imputed$val[mask])
      }
    }
    
    best_k <- which.min(errors)
    best_k_results[[var]] <- best_k
  }
  
  return(best_k_results)
}

# Trouver le meilleur k global

trouver_k_global <- function(df, k_max = 10, seed = 123, min_complete = 20) {
  set.seed(seed)
  na_vars <- names(df)[colSums(is.na(df)) > 0]
  total_errors <- numeric(k_max)
  
  for (k in 1:k_max) {
    errors_k <- c()
    
    for (var in na_vars) {
      complete_col <- na.omit(df[[var]])
      n <- length(complete_col)
      if (n < min_complete) next
      
      mask <- sample(1:n, size = floor(0.1 * n))
      temp <- complete_col
      original <- temp[mask]
      temp[mask] <- NA
      
      temp_df <- data.frame(val = temp, dummy = 1)
      
      imputed <- tryCatch({
        kNN(temp_df, variable = "val", k = k, imp_var = FALSE)
      }, error = function(e) NULL)
      
      if (!is.null(imputed)) {
        errors_k <- c(errors_k, rmse(original, imputed$val[mask]))
      }
    }
    
    total_errors[k] <- mean(errors_k, na.rm = TRUE)
  }
  
  best_k <- which.min(total_errors)
  return(best_k)
}
