using Xunit;

namespace minimalAPI.Tests;

public class HelloWorldTests
{
    [Fact]
    public void AlwaysTrue_ShouldPass()
    {
        Assert.True(true);
    }

    [Fact]
    public void SimpleAddition_ShouldReturnSum()
    {
        int result = 3 + 4;
        Assert.Equal(7, result);
    }
}
