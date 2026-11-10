#include <gtest/gtest.h>

#include "add.hpp"

TEST(AddTest, PositiveNumbers) { EXPECT_EQ(add(2, 3), 5); }

TEST(AddTest, NegativeNumbers) { EXPECT_EQ(add(-2, -3), -5); }

TEST(AddTest, Zero) { EXPECT_EQ(add(0, 0), 0); }

TEST(FailureTest, Overflow) { EXPECT_THROW(add(INT_MAX, 1), std::overflow_error); }
