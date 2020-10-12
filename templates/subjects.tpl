{include file="header.tpl"}
<div class="container">
  <div class="card card-image" style="background-image: url(https://appsamurai.com/wp-content/uploads/2017/06/indie-mobile-developer.png);">
    <div class="text-white text-center rgba-stylish-strong py-5 px-4">
      <div class="py-5">
        <h1 class="card-title h1 my-2 py-2">¡New courses available!</h1>
        <p class="mb-4 pb-2 px-md-5 mx-md-5">Gain skills with online courses, certificates and degrees offered by the world's leading universities and companies.</p>
        <a href="courses" class="btn peach-gradient">See list of courses</a>
      </div>
    </div>
  </div>
  <div class="row row-cols-1 row-cols-md-3">
    {foreach from=$subjects_s item=subject}
      <div class="col mb-4">
        <div class="card">
          <div class="view overlay">
            <img class="card-img-top" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQsAAAC9CAMAAACTb6i8AAAAV1BMVEX///9h2vtU2PtT2Pv3/f/7/v9p3Pvw+/+x6/30/P9v3fuQ5Pxi2vvi+P7b9v6E4fzE8P2o6f2J4vx33/u97v3T9P7I8f3p+f6a5vyf5/zV9P7e9v637f08lRSdAAANJklEQVR4nO1d53qjOhANooMxHVzy/s95DWjUUMvGDuh+On+yG4ODRpp+JL6+PDw8PDw8PDw8PDw8PDw8PDw8PDw8PDw8PN6POP7N3emc5u96kkORDmWCXijK7PoPdze3YrkbBX02v//h/hRz+RoGxmtE5fiTm/Pvgt4doLBzWhrfdCh4QEGbWt577dDu7u+PPu1HUYqDWVdHaTO9j15ybxDeP/7MH4JMFKs4SpMpfEolsdzqqDB2CsIMKdPdmJeh+s7prx7/nZgZoxmGiFd+lKit6MBficKgSJi7oz8cw7tQw2Buj9fj59dv3haGpTzmSDn1QEk7rgpV3UL4uj8dxVtQ4SGhB/lV3LDjRMFDclvDXoFuFf1khC+0dUTnQYmfnNeFijUFe68QM+YWBRmvDtN2K2o/++DvR4QHtVvRc0elgXp+jquEEUW70yEs3uSDj/0R4LUuW9BXVlMe+3s2ayK5EVtjJNOtM6PbxlRKP2S8LeNd72TBqLxM7aaSSK0FQVpThwtaRH8VqlwFXjjFJx74c4DlrMzV6dJA9XJRXtC1ogw9Urxy3Mrgp21ktfoKxk4W+dd8ofZUM9Jiu+T5/gf+INptoLrsIe6IMJKJGk2tMdg8CRre/LSfBX7oRntRRo0l+Yc+3dg0yzHj2Vt5v3GXvVX6G7Dqyb3TWZFsC95Uqah4SRSm8PpqNEMnxGYKQ2NOmRZUEqg3fu28aZX5whMhwsOzKH/3RBYWs40je6ei8NxaFk+6Li7m2l+0rYvLO57xr4BlYZ6/mbMXxmzcYVkYnznlbWdiCigdloVJR6JEcKmF6YbQPXthaTuJ3YQIHBnsp4uywD4V6X0qFLFQGYNUDNVM7FPdSlRxrKU1hi2iiyGCOEPfLcBFVKfiC0godSF1A9nIOrIcTEeoy0hw0N6992E/DFyB0rSSoU4eJJsiEe+KNGHGZE5/z4fbNix1nkpdCAz9SYSjtrgZMuvR6ZCZkmvSSaKkjAmURu1MjCI+IxpDcg12M2SHlYExVYqwFuXnAp56gz9CQ5DXfOJkVXZmUyzHOmcpHpWiZwq2QtQGEnzJg3FoQDnWXsYFDLlPgCFf5nR+4fp4PKrlHynJWuUL6ulkTwCKfPtgIU6fd/AYl5WOEK7ktPUnDcbvz3Q/+yYrdFLcd1YwmsfhVifBjoUlx+uypL4N4xzvvtQ11tbAVibz63ArAmQpBV4iKChuw3OzH3ix/YgMeAJAWBnPzSqGH0tBWCPFrZlzdb/61IjxMJJfioEVCDYmbmXsC3r9yH4Bx0xnNJUX/YBWz/Eyj0n/Ql3Xy4/kZVh3LLc9LuXkTHM5HrvAqBjNeJ2jSAzF4iian4/JdDMKuulXbPs/QnW/yASx0ttvLfxP3x0mrMa27BXuBwV3Q7/xcEwywi4Kk66dlkDhhn9jagtBFvtKV+J5arsklH1tf+J8NcpkS6K/T+AEH7a0REhnSHM6ne4SY4yC7JyWI2/lVoK5JLHSkAWgJYz/zBWqcj5pxKIk4H9MlAhFC5s2OdYSJojHychl93fak6WtDf+EKCgnGA6p8gNBXFfQJNhf3MHXTaX4x87E06l4Djeqp2Wq8DonDb9uN9U6QJELat64drEus2iqOeeC+tMwuFruuS6wcyjlqanj3gRoUfA6NvF1nLRNuL96DtrSzBHee6Zi0XNKIozNiEfIya7kl8nX4r8ZbjkqTrAZbWIkEdYcQStjlWRAu8FgvELN8TnvDSCw69dyBe7Q8iXwR81K4/BoI2OZ7gJVbWZUPMb5iWg486EOlhQkDLpGEAcEGatagMgFD8puS9PTIT+PG2UjJvt6HlaSJbHENkXQa84Tv7wjfzteV2uxHBvevTueqN1Ah2awdLuHZIsDJTpHZI4v3FXPRIgVEj7HgNhshkBLSv9sTyEMUsRFhTRRAk8ywJV8xLmndwqWFRTjxkhVgopwyY/bgEX47UpiPw63algWXDVfIgqR693DwmC0TQbYjHZYq5V0ytUWHCYWImp21gWuFuDCWscrHiPIRMkjJttwDuLNE/qImukc8+PkOkCqIiBnHjvuI02YBinwMdVQCBi0nd47qwche+Uk05Dd91XsVVoFIPsej+iewAC1cSQ3Fm7G1bVhbvWUrCy0ZQ9ifv6++ofn1WSsmCGHrK+ZVctCGDJ7nSHXzzR+97PAmmzq8zKqwEXfus3unOOlC8OYyfRWIvsAAstJIL2BkLPwvFHkwXlOujCMVhG05OeD+R1m278LdQhhunStJJ5wAAvDwijiC/86Y61sd7UAHVrwvCL7mQWvd8T8mkt5mML0180Ca1mQpILLMGOdLHhlkKcyUmyK9+fh1my7qwWMp5ChFjIhSHUEQhSL+kRyjI7giDI0zkFNhhjJf70Ht9hy8msj87kKbZXpzcDGz0RHpsEWH4lkGp/KXchk5CYqY2cps7cDh+D6sJN2DcX5empkwdo+tkNkqE5gouQBQTh5SG1gHLFj5CyG2nhyboStsetj8NTqqs8AbFqiU8+Gy61YVzIoczPWRubcJ7oZB890yKlTQDxdtuYrwYVUdguDWxZcnqsL+HNSQTikv0pSjUTpxCp+8rnl+5AvDM5CQnSbSD7jMINkj+oMkMqvMivB2p7QwiWDQXaiGEeWJy2SK551lfUk03Jc9ZdoQHiTB4V421lLCpdceNzuVwbvT2FZdcQFS/9MTMqdB+6+IrvEFCfcYDUIK9iUL8Tsu9qWsMCgTFqRirpsAT6YU0UOpB9QYbxW596X3ehk4WEJ4cjccX5GOMERdlaU9P59aJcyJ3YdKYrX8qQn/rxUQXgUHKevrpBYQeELrmWAufGXUoznaauIOmfBS0SMnqH+aFLKjWmoCieljSxn+aaqCcbVOLTDWO1MAdTsVk8M9AvOtEYZ24I8AQeWO0GPO7YVqwjmx8MltmEh11qWcQ5SjhZ1jkN0eAIGKkkQcOEe8hvtRqMFRznYcVFeysVSc05Bv1jBF3LDIlvn/sqqyBclo9jVqcFwQqzJcpS+0qzggpMz7dJM+eNsEaqbHMIH4vIh0LQoUH1Rw0lWGTnVLm9q4WDUkx0QfRUIvwh1iThlsOptsifwD9QgAqdRPB56R4E5AUb5ecVMxY1k1eb9pSSRoZY2kn99cc5dRo9a9rj4kNoFkKebNxJCzE6cQz62kl0YqD+nJBY8Swmpfzk/f7iuAtmzeeWA9GM7AuE6lIX0e8tzb2Bezr2XLeWXQLp2auy0hPTMh6ntCsWmiSRzYN/Z867YSsMMKtlto6GIo15yB/9Nwe3cS4LB4yYdAjuaS9HXXXm/Zy80TbP8uN/Lru4L86akcnRhVxFFaRoQnXqA5R2ubeGmnsB2hDZSw/84Oh39KYCz/NhexfJrMaDi1uBTHR071pW4grVckY5Zl/xACQQpBEn5Pa4+A/fRHd3PTkPo9Nq0685+6739y87trm2etHyDtzG69kYBfCSBmD9G87X57rkBcyCf9N/T/tQHnLe7Zjx1h0oR8sVlmoZhyDZ8D8M0kQaStOODj107gKn3K+BzUeShIWksi6udHMUmTzOggHquFN0ESEkVMwjFH8EMQrlQma84eQCG6eC8TrYASKKuZD45eT646fDqeHfsGtNTvyiDKaxD59hoZ4vNpWpyc0LbpGe5knMr1bEUViK3zibcJlC3mAl9G/SIqI2mUz4aVO+UwAfn6UrexGdssww717TVUDaadQY2B+fRY12/mLP4tIxR3D+yq6SfBdj56Rm4xEDcv76h3aE//Rjqv+c720CDrS9keJ8AOcMT0Xa7vm4HwZYD1T0KfN6vodLAn5SudyEbLv9bWYgsT3NA6eKhlZay4PdlhtaM7/+lLFiakk2NxmFZWNh7WiO2iKCctJ29jR9ZwHDkkTm0jl30qbaHFHO8XjPhKj9qV8RvgJNrE+1EbEarGcQbnIzBcW6mt4bpvvVq8KpO5ma4DK6tWD+oBGjLMdSyjTJDWeSUuJonkHnT28C83At1mowEq96J2FkWAM6y0sjlzJsyF6uSMlso1BY3sVGk06HQP/XI2IgtB2EYxMpDgPDmOrfCC+gVKTQ7ohxuRN91x5xDVMhztNbNXhHwn2VREbBzAoG4zL5u9ybTLpyluvX6ERot75c7y34UvMaT0tOQxB9j5+Rcnx3I4GJp68m8hju4iFYyYrcdXARpQP/JrUhrATR+EtbQjWygiTqJHrDbE1HQMnEo7FVxrFO0guzSxoF4/OA5bYrav8C07zOsEeRwaKdeeodBukEoKO/3suePL0a1Mtfkt3cvlJy67gkd4fgjCP8Fkq111Bbosra0U9/p2HtkCaSU6HWqTUH0VUqYXaB5ydWpEUvZ8gjZHN08yaVh8Y7Vs2K/Ml6+wbIoNdY7Zpf23e2nB38+9HIq8g9unlvujR0ocI3AJ6LpCS+tbH48rdV3BwS3rnHUVLCIq3Fqxuqfk8t8fj4rd+2Eh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHhwv4D6lPd+BMG60pAAAAAElFTkSuQmCC" alt="Card image cap">
            <a href="#!">
              <div class="mask rgba-white-slight"></div>
            </a>
          </div>
          <div class="card-body">
            <h4 class="card-title"><a href="courses-by-subject#subject-{$subject->id}">{$subject->title}</a></h4>
            <p class="card-text">Some info introductory info about the subjects.</p>
            <a class="btn blue-gradient btn-md" href="courses-by-subject#subject-{$subject->id}">See more</a>
          </div>
        </div>
      </div>
    {/foreach}
  </div>
</div>
{include file="footer.tpl"}