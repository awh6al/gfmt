#include "gtest/gtest.h"

#ifndef GOOGLETEST_INCLUDE_GTEST_GTEST_H_
import flags;
#endif

int main(int argc, char** argv)
{
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}