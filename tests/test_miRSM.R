library(testthat)
library(miRSM)

# Load datasets
data(ceRExp)
data(mRExp)
data(miRExp)
data(miRTarget)

# Identify gene co-expression modules using WGCNA method
modulegenes_WGCNA <- module_WGCNA(ceRExp[, seq_len(200)], 
    mRExp[, seq_len(200)])


test_that("Test miRSM", {
    expect_equal(module_WGCNA(ceRExp[, seq_len(200)], 
        mRExp[, seq_len(200)]), modulegenes_WGCNA)
})
