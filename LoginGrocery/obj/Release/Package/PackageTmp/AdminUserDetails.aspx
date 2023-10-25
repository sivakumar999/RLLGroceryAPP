<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminUserDetails.aspx.cs" Inherits="LoginGrocery.AdminUserDetails" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

            <style>
body {
    background-image: url('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgWFRYYGBgaHCEcGhoaGhoaGhoeHB8jHxoaGhgcIS4lHB4rIR4eJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHxISHzUsJCw2MTY0NDQ1NDQ0NDQ0NjQ0NDQ0NjQ0NDQ0NDQ0NDQ0NDQ0NDQ2NDQ0NDQ0NDQ1NDQ0NP/AABEIALcBEwMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAACAwABBQQGB//EADoQAAEDAQMJBwIFBQEBAQAAAAEAAhEhAxIxBCJBUWFxgbHBBTJykaHR8GKyE0KCwuEGUpKi0vEjFP/EABoBAAMBAQEBAAAAAAAAAAAAAAABAgMEBQb/xAArEQACAgICAQMDAwUBAAAAAAAAAQIRAyExQRIEIlETMmFxgbEFM0KR8RT/2gAMAwEAAhEDEQA/APpje8dw5lE/AfNEpQp5BMdgPmhcCZ1Bf3b+gVZMaBUTR3HkrsMAnexdDGOkIwan5oSmGnzUrtHVO75yVJia2MtMQeHmo404Hmo7DiOaW7/odUWJIYHciqLvn6SoDPqgH5eHIosKGg08uaqan5pQtNBubzQk1duKGwSGA848iVQPzggmvH9yjjXz5IsdF2bqj5oHuqssfLkFTXYbCB5qNx8krCg2mjd3UIXGI3+3soDRu4cwhd7JNjSBacOH7VZGO7neQF0eQHJWXV4e6myqLOrYqscPLkFTseHsow1A2DoErH0Qe3pKqzdhtChNPn1IbPEfq5/ylYyNdhu6qrI14dUIPdGw8wrs3aNh5pWFAtqG+H2S3mWTvKY3Fu49PZKZ3R5KWykG19d56FJygyABpKqx70aj7qmGbvFTdoqqY40gah1Hsraat8TuRQPPe3cyqs3VZvJTsVDn939U+spbT946IrTBo+rkhY7R9XSUMEU0iBuHJRJczkOSpT5MdI7wZp9ITgaN2+xSG4gfSiaaN8XQrZMyaHE0PFSxNB81IGad/upYGg4dE0xUMYdG2ENq+DwB8pVsxO9DaVdwKqxVscatKFxx38whsHS0qNNK6SOSLChrDzS2Hu7hzIVt5RyQDEeXk4IsVDGnDwt5oTidx5KwYH6eSAHO+aQix0F/HMHqrHePzUgPTo1We8eA5JWFFMdNfqHNMn16Sk2NAP0o3GnE9UWNopx7vHmFdo7pzVWhzRu9kD9PDn/CTY0iWg0b+SLSfmMoXadx5IgUhgg1+ampU93cPQtRTUbfZvsgszQbG9f4UtjSGuw48iULMRx5hG7R80oLI8z0QIkYcfuQ2PQ8/wCUWkbjzCVYY+Y9Uux9FF2c3eeo6hRvd4nmh/t+bUdnhx6qSmJtKGRpQZLiNx+eq6LZkx8xQWLIA+aAlWyr0ATQ+Jo8irybBvhJ9VTaf59AUWT6PAeiS5E+BodIadZPVIHdn6j6NhPuwGDelDQNd7kqYIjrTYFFHWYKinYaOppl3AjyKuyEtG8HogYIP+XRGww3y+5bozCsz3t6mT6dhUHedv6KWIx3oQmMYMTrMoCc8jYjYacEqc87gmJB5KKEfNCjcBvHJXYYu4ckJwOyOaA7Dac08FT3YeLqqb+b5pIQWn7p9AUrHQ4YcCgJzvLmUWj/ACSnY+XoSm2CQw4O3HkPZS0dHn0Uc6h3dEq1Pe+flSsEgm/x5EBE/A7/AJzQ6DvP3K9MfMGosZbzTz+eio/PMqHFu89UtjsNw6pWKi2mvE8kTe9x6FKPUn0P8JpOePmtKxsV/bx5KMFI39UIOHHkFbDQceSmygi7u/NMdENn1PRW4Ybx9xQsNR4ndUwIHdzceipgqNkqO/LxCoGvEjmVNjBGLePJMsxTieqUdHEdE1hqd/8AKED4CAw+aJQnD5sTffok6D81JsSFNMxvn/VSw0eBRjcN/IKsnPd8B9CoRbHvPd+aEiYDTsKYT3OKW7ut3H0TZKFufBO881ENq2pVqbKo7vzeaJpzDx9CSheYcNpPJGG5rhv6rcyL/MfmhEx2KCa8OhVMNXb+kp2KhzMBuSz33bgmNFEknPduCAQ6wNT81IGmh3BSx73BSM0+FF6DsgNDx5lDanHj9oRNofNLefm8JMY69+7mlnHgP3K2Hm5A4/aOqGwSGfl4dCrLe9t9gEqacP2lNJqfmgIABukfKuKsGvzU1ATWNnVXOHzEBKxluPd3nkULMPNDNB4v2o9AHzAJWFEZU+at3eHHkl2Tqj5+UIyYcOPJKwrYlhw2An0CtjqDceqB7qO8PQKw3AbOZSLGux8vRxSDgDt6lNOjhzclOHd3+5QxIY7RvPVAf3cwjBx8XOELjTyKQFPFR4j6H+FbHVcNx8wEF+rfERzQ2Pffw5JXsdaOucPmtLIgO+aAi+c0LtKpkoS53d3lTJm93wnoVR/L4jyRZIcPCpXJT4CvdzceiEHNaNbT091QNGa4Kpz6DcfQA9E7CgLV9TRRBbYlRT5BR3WveG8eo/hOsTIPHkud3ebuHsujJxAO/otlyZvgFpkN3DkUNkav8R5BWw1G4dUNhi/eeQQB0rmLs93DkF0yuZwzzu9k5CiNsnZw49FHuodyqz7zeKjhIO5HQ+yp6qrTH/Hmo/TuPJS0x/x5pMZLPD9RHohJr+kcijZgPF0KBhzh4RzSAsmnD9pRv07/AGSn4fP7U14x+akAxc1J+lRx/ahA727oUVsKfNEqRlkY7+kKnmnH2VA0dwVvNOHzmgALE4bf+Qje7O3DofZCw13TylGW1du6fygOzmtMH+HoE8HO4DnCRafm8uSc2rvL0eUuynwXeoOHMpTKgbJ5H3RPNRw5lDZig8J6IAp7u94h0VPMebOaj6yfrHoo7Rvb6FSALzB/X0nqisxnHaqtsR4x9oVt73D+Edj6OiacEBNSo51EANVVkJA2h7vi6KsnNWD6fdU6bzd7vSFMmEFuxh+eqlclPga4ZzdyS45g2hw8wT0TXirfmpAMGb/2uTYI5MoEuPDkouy6olQeQ+00HYfQhHNH7uiC1OH6uiOyMk/Na2XJn0Szx/SOqqx/NvPJSw0H6R1QWHed81pXwP5OrXwXPad7h1XSVzWneHhPP+U5ExCb3mqA0/SVGYjeOqo48D9yQyP07j0VWjs7g37lHGSdx/agtcZ2D7gk2ND2dekpJOcDs6ymWbsOB/1CTGG4c0MEW8Zp3ftITSaj5qQE8ujvZUTQHaD6BIZbO875o/lAH03g/uV2Zr81NVXc3h/0gZP7uH3FWDzHrcQCoduH3InDHZ/HskMCz+f4gdV0OoeBXNeidg/5T3Px3OQmJiC7HePUhMszU+IepB90h+nh6PKewSeI9ISQ2R4qP0+kpeTE08J9SPZR5gt1QOTldnjsgepQHQLDm/q6hWTzb6pY7rdpB/2CNok8WHy/9SGwbTR4h9qP8zjqhU490/XyEImnOdvHIIQnwWRT5pJQsPzgo4wD80lAx2Pl6BFgloMt7p+p3rPspYju+EhU893xcyVWTvoz9XoZQuQfAZdmjd0VAZoPH/UqNbRu5Cx2YOPoCmIU+026ByUXJbOM8ByCtZ+RfiatpgN7vWSryY13gHmhedeufOPdXkuLfD1hbrkz6GWBoB9I6+6Xkxzn/NaZZGI8MeRCVkwzn7T1KPgXydrlzWnfHhPNPc5cbXy4nYQnJiSH2eI38lQ73+XNXZGo3nkoO959EABt2DkPZR/RvMKmHNbub6qzgPCPS6pKCZo4fahJzjsRgVHzQUs8x1QCLGI+f3IGHNG4cgraa/NbkM5o4cggYbfnk1X+UbhzSp5/8p2obvuPsgGKZ3Sdcc0TzyPRKsnSDub0lMtfnop6H2LJqdp9kw/9oG7can55Ixj5/cUIGJ0/qA9XFOYat3nkuYVcPETwge6cMJ1BxSQMp4oBsA/1PuiiJ3D0Q5Qcd3K6Fdo6jvmgIApoowbek9EDXZw3/slMeKt2HoUqzMuw0H7WpMBjNHicfIqWZq47eQAVWZo0/QT51Sg+GA/TPE1RY6Dyh2aRpIEJWTP7288gqZLjJ0YeQIVMEPj+6fWqTe7HWqOnEbnEfclMwbGi/wBYROMA7HA+f/qlmQIG13VMka53d3dEttIH1H1ROPc3dFbNf1FUAv8ACadaiOyfQK0qQ7YeUaNzfuCmSaN37lLQ4H6QfIyhyZ1QNrucq/8AIjoZZ4/5D1lSyOcfmkqN73E+oCCwdnO3x880AxuU2kN4hc1lh58lMvdgOPNG4c4/1SbtjSpD7E5w4+kKWZzuLhyQWLs4bj0RMx4uPRVZIvUNUehcmThxHqEGrcP3K3GI3u+5IYxpzRuHMDqlPdh8/MEeFPD9yS45w4/cENgkEzE8OZVM7o/Tyao0149SFLPAfp6JDBYZjh6geyfZ4ceTiVzWZ1fT9kp1i7n1SGxNlp8BTHnEbPcJdgafpPMon856+6S4B8lNdU8R6Eo30I3n1cUtja+f7h1RONRqqf8AYwgOxWBG537fZMY2l36T6x7JFp3Xbj6p9mftYPMlJcjZdsZ4k/cB0VONI1vj0HshcKnxfvd7Iw3755IERxzh4Z+eaBndnYfKf4RF1SNTQeaReN0j6B6kobBDnmJGpob6FLygYNGkx0TXGSfH9olA0y/YAPMlADGswAS7ZmB1O/hddn89EjKmZp3z1Ta0JPYosm+NYb89FTO8TrLh6fwo59SdBZPlPuraw4wTDuczzS5H0G80bx9P/Fj5B2iSIdUgyds6Vq5Q8Ma0vIYJiXUEmYqV5PKHGxtBSRMt+ps1j+7diCNULWKV0zHJJqmj1VnbtgVUXnn5ZWgkYgziDUKI+mvkn6/4PUPNNlz2S8nOcPEfVqB9s1sAnAERxjDggybKmlxANRBOygFVNPk28lwdx7w3z/qEvJ8XeJE+1AIEipgVxN3D0SQ+Hngn2F6DymrgPpPVALSTH1H0Cp9oC6fpjzKKzsrzrzcATeGmSNGsI8W+A8kuR1iM/g7p7KWR7u481MndnfpKGwxHh6oQMk8hzcmWmB3u6lIBw23fuJPVG92O8/uSTGxxOPDn/C53mv8AlzCczA7uRKRaih3lEuAiMZ3uP7nILM0Gy7yCs96dp+5yBpi7+n56KRgNdTy+wJ9kdOs/uISWDDcPRoCbZnNHz8ySBirA8vcpr3A8JHqfZcjMrYHtsy4X3AU3gkSdBNYGJg6k8jHfzvJrgLTegmO583fyiH5R9KXYmsaaHzI/hWMJ1N/aT7JIBb6SNrfU/wDqOwNd5j/FrjzS3ur5DybeTLLAHUJO8ge6S5G+Cy7O4/8AZUZo8aWw5w8vJo91LNxLWeOfUppg0F+Z5+kekqy3Hc0eRlA4wHneP9R7omMe4T3RTaVpjxSn9qE2lthnX4j0UyduJ1mPJItGWgwuuFdmP1CR6K8mtYZJmW1cAJIqTgE54Zw3JaE2qOkP6dE2L1NFL1YgYfOKxT2mK3Wux0wJoMK7FGZaRblhIFHFtbwcGEuEgeLCdCeDxlJpmM8kWvazeZkzJzWyGiBWm2Qdy67OzAASclfLARjEnjpkbE6xeIXdGEVwYuTfIdrYte0te0OacWkAg7waFfOP6h/pDKbO0L8iF+yIvGzJaQCMW3H0eNWkTC+lNMqOwKcoJrYj4Za9r2pOaG2QpmCAGmKiCJFZoovsmU9iZPaOL3WTCXYkjHQouf8A8/5FbPCW/ajiBQhzoJdho/LjOkyJGpO7OfYlhY8w5xkUMSJiunTivHZNkNtaxL3F1A1pc4wMABWGgDQtaysbjKuvGJNZncdS5csnVEynW+f1N424ZdDRnB1IrUGu7CoTss7Rf+E65DrSIN43R+mBQiZ4FedZ2jZuN5zy18w7SC5oGdTSRFYko7fLJAhwdpBHp5YV1LLH7ZNyDDmWOXFm3/T2VNIDyXOZaDvVhpnU4zE00rcFldeHB5aBMGpBnSYxHJeJOV21i8Gwa17LUwWEgC8cYvEBpNZE1MbV6PJu0XOZLmthwDgQ4YcJnTWV15ZRjy9no+sik/JPT6Nd1uWG84SCIlplpnSIS8nyxkgl4FIqaeeCzH2zm1Y8VrdNJ2ljsd9DtWflGWf32TDtDgPRwMea5pSXKZyLI4o3st7Ss2MDnPG5ucdOgLFf/Vt8kWOTvfU1m6NOJgxjpSrN7XwWWVmC00MB5B4AAFKy3JDaiHPN3C7eDQf0Mp5yl5mc88v8dHc3+q2gXXlgeZBa288N2SBU7gtVnalm+YcQP7nNLGyYpLwKrxNt2K2xbea8NABc6LrGgATWlYjE60nKcqLbJzHAxeaauGaYDtH5i0tG4mVeKLnKlbFjzzT2fR3vArIiQZ3k6eK84/t0sdQX2XoLjIa0jQCd8RrXley+2LSzt2gS5jmm9ZudmTiBBm6Z1CoBTH2zbRlpakBlrF0WbgC26C0X2tO70K6n6eUedlZssmk4uqPddmZc21aC2KEgiQYwg7j8wXRa5S1jWB7wyZgmAKOH5jSdMaYOorj/AKfyGzLWPYGtvsF64ZGDZh2kzNdib25kNncMOIc0UJtHHgZNZXM4um0bqcnBJ8/yec7UtW3CHOvh5BpS4WvD2vvt0TSdAAwxXSztq0/DunvihfmuE1IDxooe8JBga129kdiWb7IWoe5rnjNIMwJpQ0xWRlGTfh2rr5LXNA/+lmM17TPfszQgVkDCTBxWD80rfBztzivJfBpdl9tvMm0ANfyA3mt0XgJD8Jlq3GkEUNDAkYEFuI9F4jKrQ2T7N8tLXHNcw/8AztAO80AnMdSYqM3HVsWOXuYIbDmEX2k0IrnNxFASKbdyIybaXN8GmLPWpG0TT9P/ACEx7qP4NCxrHthjqupdxzTESMTOsQryzt9jGC7nkm9pGmgONfZaShON+Sa/Y3+vD5Nd9Hg7Xcgrsn5jNseqwbLt8OYXlsOLjdbIg6ydMDBeV7b7YtzmPJa2M0DuwNRGK0x4vJ81/JpCcZ6R9GZaBz7og1nzgDkfJdj3iJIJAwaI0aar5/8A0ZlxYJMupMDGj3gmDoqAvXWGWguZLS0GkkxESu7HPHij4t7Mssoxl4tmga5wZXfPCSBzXkXdsvvhxAbBgwMAcQTp/hegyvtZlkxpMuJGaGwZrWdEYea8szKr73m5N5xdcAriTFFj6vJdRi/1ObLN3UWabbdpfnxOI1Y4jagdaiycHi9jIDXXSQMcFzWlhbOuuFm5tKFzHU3iK8tK58iyd9pfAfeDHOq41OG/GPRebjv9znadn0LJMvY6QHsNKQ5sxEmkyCkv/qLJ5ui0EztjzXzlr3CZOExUHGk02bEzsvIWZQ1zmvawtwbQugYOdv2L1cWZzjwev6D0mPNBzytpJ1o+q2Ns1wlpBGsGUDsqZfuFwDqGDQwZE+hXzjIO1n2L7t4SO82ZY7eNC7Mu7Rv2geJ7oBbjSstB0jSFq8tLgn1foJ4Pddx+T6A6xB0kbiVF5Syyy1gXXuu6K6FSPqR+Dh2fPuzraoF4mTALoniQMFvfhBzQHHClN1RO9YuQ29i1gGbHEkcU22ypzbdwBzcwiMDm1O2hAXkZotvWjCfI/L+zWQCBBwgate9D2fZsY6C6oiAcJJJrrM1jmuizycvlxoJoGgVjp80LSsshFmDaNAvXcSaEaNFFm1JQ3ZcMMpLy6E2mRlwJbArogDbRcOU5R+E648ugVBbDhU6Qd3oVrPtAHuDiX5sgAGBGPdr8K5RbPLXAt74pejOGj/w61lHI392zScL3dsrJcpbbPAN17LuL2SP8SaeavK+xWNN5sV7rbwjher6lc9lZ2jHhrmSH90NApArMUHFa5yeWFs1oRqBr5A4FaRUpZEr0RFtqmjFdlBZmuddmhjWKwYwqlPObeJBjOaRFIwIPVL7Vfca41BkU1GRjtr6JeTBzwC4i6RUaaLaWOtmcotGjY2zHgguY9r2yQ83S5sYEHTsAx1YrB7ccC0mzGeXAwAc4Ckl2AjmdKf8Ah2Zc4ic2sjAnd8wWrk9nZWjAALzdRnGIM7+ivFlWGSdOgXtezzeQAG6+0q6KBwLSHnUMHG7Sm2iQ+0Nm6/dzy7FxN4gupTANjmtnK8ns2Ew6S3CHTcMGRvG2ucs11k6WvDS97mAnQwCSYwvY1rOjCV7ampQUuvyXdm72L2oXP/Di7QEOaXNa66agRSYIW0OzH21tAcHNuyWOe86Zq+JjiFifiQ29UHG6ZBGr1XRknbLWh4Y9wcW4ObUzEi8DQjWdS8WeS52lS7CGVxeuPg9FlGWusWfguZdIq24MwtGgHQQuV+QWtbd7TEAkCCbo/uboxOBnYue37QflLGWTA4vzbz65sYucRsWz2h27ZBpbfvOgsIZU3hSKJtKSbfB2SuUafaPKNyOlvYP7l02jNTXNIcHN3g13DWkW1uXZM26XCJZOMzD2bZzfRdrLF8MDovhv4dcQxxEEjQREblzNZcsmMeQC+0MgyIa0XThpqfJR6SUfqJt7TX/Ti8d0jGt3vZaOJcHmblQQ14MEmBQYCuxdILXNLnudDyCSyWBgwhrXDjEaBBqus9jOFqWvLC5whjmnARmzJmHSKnWtbtPsKzeywc+1dZtGY64JvOaZAOjX5L3pzhL2va+fyaLC/G+/j8HnMpBbcDJFDLgBS6Dda7xGPIrrDWPs7rxTvQYDgdkHDELZt7PJfw3mxsy8sFXuLiZqJIoIpoGtZXZtgLQudZNc61DTdY0tADSRedDnAvJo2BhxEcGTFFxpP3c38lRxyT5phdmXLMgsEASMSaE1FdE1WkMqLyAZaNOkHUQ7S0rC7RytzWNMXScdY1jZVdPZWUucxt47BGJETFBqgLgljlPUmZS8pfc9nqLtnlDmMgsutxkEmNEYcVv5F2eyzEWbA2cT+Z292JXnuzbtm5heYLnBuwE4N+a16X/9MBYepfjJeT1XR2YIJq1yLyiQsTL3CLwo7WOutaWVZTKyModIK4FmcZ+16Oz6akqaMLKu02WgewtaHhpl40UrPCq8jl2UPa+9duAgEXJAwGC082yc8PJN8y+hIIBzg3WagFYL8sJF0k3dAxAX0cI1o9H0mFYItJ96OizymTM1WrZ9o3MTebu9tK83Q4UWz2Uxj2lju8PUfx7J5I0rQv6jmySw62u/ho37HtW0gXHi7ozm8cSNKpeTt8gIccTwUWdo+c8l8Hocl7EaC10FzXVFYB06wW7q8U0WcXyWi6115omYa4wBXGJ06lFFz5vt/wBGOT7TXsMmJaDegkSBJkaGzAip8kzIu3qfgvAvSW6xQ19VSicElA6vT/aTLbYWRDbO6LV5zpBLY0u0YaAi/wD1C82+wEMEk8iBwUUXmyRLCtMsAaCxpc57oFYrM6cBErps4Dm4h5GdWa6dmKpRF+FNDPO/1DaWbw+pDhSgMF8i4TsMEHgsOyyt34T2nFggcaD0KtRerHa2ZM1ciYxrZAJcWtLpNJInUs3LLR4cQ27ddSJLTtMga58lFFXo4Kc35GMdyFWeT3b7rtNDS7NcZEuI0Gv+u1OyDLRfLRnNOIiPwwMSNedoCii9HP8A2n+hT4Zp2bmEh2cTJjUbonBE41Ja1pcCMd+Cii8AyOuz7VaAXC8CATSmGNf/AFYGWZQbO0uC1eZIDiSSBpvNmojUoot8MFTPd/pWKGSEvJGhZCyvWn4Zf/8AOM28QLRrhEunSDGpcvaeWPdbWjXAG6S8EULRfu3TJrUg0/uKii0xRTyP9i/UYovJJ/FGv2D2qLRn4d5t995oLmFwgaHCk468FpZF2ZlFjeGUWzbaxdBi5Dr4wdMkqKL0Vwcc37kItC1uRG0bpddOsy4zPCV45ls6ztWkOIzokanUPNWoubLyiM/3F9pZQXm43BuK3+xrdlmGnGmbI0NF1zt8tMcdaiiyOYvtLLfxnBhJYAaHGd4GGpehyftktAFpogXhjGiQoouLL7nsMM2p6Ou0yttoJHIhZ/aGWts2kmpOAhRRcMscXlR63k0nR4Lt3Jnki0DoJzoGA/8AaLGuTiLp1ioPDQoovo8DuGzDDnm1thWWTPJhoB1VjmtA5P8AhwQc/Xo3Ae6iinM6D1GfJ4+N6HDKbX+4f4tUUUXNZwn/2Q==');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    font-family: Arial, sans-serif;

}
    </style>
    <p>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
        <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" />
        <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
        <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" SortExpression="UserId" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
        <asp:BoundField DataField="ConfirmPassword" HeaderText="ConfirmPassword" SortExpression="ConfirmPassword" />
        <asp:CommandField ShowDeleteButton="True" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GroConnectionString %>" DeleteCommand="DELETE FROM [UserRegistration] WHERE [UserId] = @original_UserId AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [ContactNumber] = @original_ContactNumber AND [EmailID] = @original_EmailID AND [DateOfBirth] = @original_DateOfBirth AND [Password] = @original_Password AND [ConfirmPassword] = @original_ConfirmPassword" InsertCommand="INSERT INTO [UserRegistration] ([FirstName], [LastName], [ContactNumber], [EmailID], [DateOfBirth], [UserId], [Password], [ConfirmPassword]) VALUES (@FirstName, @LastName, @ContactNumber, @EmailID, @DateOfBirth, @UserId, @Password, @ConfirmPassword)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:GroConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [UserRegistration]" UpdateCommand="UPDATE [UserRegistration] SET [FirstName] = @FirstName, [LastName] = @LastName, [ContactNumber] = @ContactNumber, [EmailID] = @EmailID, [DateOfBirth] = @DateOfBirth, [Password] = @Password, [ConfirmPassword] = @ConfirmPassword WHERE [UserId] = @original_UserId AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [ContactNumber] = @original_ContactNumber AND [EmailID] = @original_EmailID AND [DateOfBirth] = @original_DateOfBirth AND [Password] = @original_Password AND [ConfirmPassword] = @original_ConfirmPassword">
    <DeleteParameters>
        <asp:Parameter Name="original_UserId" Type="String" />
        <asp:Parameter Name="original_FirstName" Type="String" />
        <asp:Parameter Name="original_LastName" Type="String" />
        <asp:Parameter Name="original_ContactNumber" Type="String" />
        <asp:Parameter Name="original_EmailID" Type="String" />
        <asp:Parameter Name="original_DateOfBirth" Type="DateTime" />
        <asp:Parameter Name="original_Password" Type="String" />
        <asp:Parameter Name="original_ConfirmPassword" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter Name="ContactNumber" Type="String" />
        <asp:Parameter Name="EmailID" Type="String" />
        <asp:Parameter Name="DateOfBirth" Type="DateTime" />
        <asp:Parameter Name="UserId" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="ConfirmPassword" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter Name="ContactNumber" Type="String" />
        <asp:Parameter Name="EmailID" Type="String" />
        <asp:Parameter Name="DateOfBirth" Type="DateTime" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="ConfirmPassword" Type="String" />
        <asp:Parameter Name="original_UserId" Type="String" />
        <asp:Parameter Name="original_FirstName" Type="String" />
        <asp:Parameter Name="original_LastName" Type="String" />
        <asp:Parameter Name="original_ContactNumber" Type="String" />
        <asp:Parameter Name="original_EmailID" Type="String" />
        <asp:Parameter Name="original_DateOfBirth" Type="DateTime" />
        <asp:Parameter Name="original_Password" Type="String" />
        <asp:Parameter Name="original_ConfirmPassword" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>