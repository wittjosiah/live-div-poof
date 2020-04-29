defmodule LiveDivPoof.Component do
  use Phoenix.LiveComponent

  @impl true
  def render(assigns) do
    ~L(
      <section class="phx-hero">
        Component
      </section>
    )
  end

  @impl true
  def mount(socket), do: {:ok, socket}

  @impl true
  def update(assigns, socket) do
    {:ok, assign(socket, assigns)}
  end
end
