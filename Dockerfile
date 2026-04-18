# ============================================================
# Odoo Dockerfile
# ============================================================
FROM odoo:19.0

# Switch to root to install extra dependencies
USER root

# Install additional system packages if needed
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    && rm -rf /var/lib/apt/lists/*

# (Optional) Copy custom addons
# COPY ./addons /mnt/extra-addons

# (Optional) Copy custom odoo config
# COPY ./config/odoo.conf /etc/odoo/odoo.conf

# Switch back to odoo user
USER odoo

# Expose Odoo web port
EXPOSE 8069

# Expose Odoo live chat / longpolling port
EXPOSE 8072