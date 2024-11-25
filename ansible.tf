resource "local_file" "inventory" {
    filename = "./hosts.yml"
    content = templatefile("./ansible.tftpl", {
        webservers = yandex_compute_instance.web,
        databases = yandex_compute_instance.db,
        storage = yandex_compute_instance.storage
    })
}