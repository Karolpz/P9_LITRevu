from django.contrib.auth import views as auth_views
from django.urls import path

from . import views
from .forms import LoginForm

urlpatterns = [
    path("", auth_views.LoginView.as_view(
        template_name="users/home.html",
        authentication_form=LoginForm,
    ), name="login"),
    path("signup/", views.signup, name="signup"),
    path("logout/", auth_views.LogoutView.as_view(next_page="login"), name="logout"),
]