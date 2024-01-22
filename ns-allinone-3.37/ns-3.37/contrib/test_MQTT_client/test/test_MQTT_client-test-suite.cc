
// Include a header file from your module to test.
#include "ns3/test_MQTT_client.h"

// An essential include is test.h
#include "ns3/test.h"

// Do not put your test classes in namespace ns3.  You may find it useful
// to use the using directive to access the ns3 namespace directly
using namespace ns3;

// This is an example TestCase.
class Test_mqtt_clientTestCase1 : public TestCase
{
  public:
    Test_mqtt_clientTestCase1();
    virtual ~Test_mqtt_clientTestCase1();

  private:
    void DoRun() override;
};

// Add some help text to this case to describe what it is intended to test
Test_mqtt_clientTestCase1::Test_mqtt_clientTestCase1()
    : TestCase("Test_mqtt_client test case (does nothing)")
{
}

// This destructor does nothing but we include it as a reminder that
// the test case should clean up after itself
Test_mqtt_clientTestCase1::~Test_mqtt_clientTestCase1()
{
}

//
// This method is the pure virtual method from class TestCase that every
// TestCase must implement
//
void
Test_mqtt_clientTestCase1::DoRun()
{
    // A wide variety of test macros are available in src/core/test.h
    NS_TEST_ASSERT_MSG_EQ(true, true, "true doesn't equal true for some reason");
    // Use this one for floating point comparisons
    NS_TEST_ASSERT_MSG_EQ_TOL(0.01, 0.01, 0.001, "Numbers are not equal within tolerance");
}

// The TestSuite class names the TestSuite, identifies what type of TestSuite,
// and enables the TestCases to be run.  Typically, only the constructor for
// this class must be defined
//
class Test_mqtt_clientTestSuite : public TestSuite
{
  public:
    Test_mqtt_clientTestSuite();
};

Test_mqtt_clientTestSuite::Test_mqtt_clientTestSuite()
    : TestSuite("test_MQTT_client", UNIT)
{
    // TestDuration for TestCase can be QUICK, EXTENSIVE or TAKES_FOREVER
    AddTestCase(new Test_mqtt_clientTestCase1, TestCase::QUICK);
}

// Do not forget to allocate an instance of this TestSuite
static Test_mqtt_clientTestSuite stest_MQTT_clientTestSuite;
