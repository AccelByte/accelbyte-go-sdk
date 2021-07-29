// Code generated by go-swagger; DO NOT EDIT.

package roles

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewAdminUpdateRoleV4Params creates a new AdminUpdateRoleV4Params object
// with the default values initialized.
func NewAdminUpdateRoleV4Params() *AdminUpdateRoleV4Params {
	var ()
	return &AdminUpdateRoleV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateRoleV4ParamsWithTimeout creates a new AdminUpdateRoleV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateRoleV4ParamsWithTimeout(timeout time.Duration) *AdminUpdateRoleV4Params {
	var ()
	return &AdminUpdateRoleV4Params{

		timeout: timeout,
	}
}

// NewAdminUpdateRoleV4ParamsWithContext creates a new AdminUpdateRoleV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateRoleV4ParamsWithContext(ctx context.Context) *AdminUpdateRoleV4Params {
	var ()
	return &AdminUpdateRoleV4Params{

		Context: ctx,
	}
}

// NewAdminUpdateRoleV4ParamsWithHTTPClient creates a new AdminUpdateRoleV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateRoleV4ParamsWithHTTPClient(client *http.Client) *AdminUpdateRoleV4Params {
	var ()
	return &AdminUpdateRoleV4Params{
		HTTPClient: client,
	}
}

/*AdminUpdateRoleV4Params contains all the parameters to send to the API endpoint
for the admin update role v4 operation typically these are written to a http.Request
*/
type AdminUpdateRoleV4Params struct {

	/*Body*/
	Body *iamclientmodels.ModelRoleV4Request
	/*RoleID
	  Role ID, should follow UUID version 4 without hyphen

	*/
	RoleID string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the admin update role v4 params
func (o *AdminUpdateRoleV4Params) WithTimeout(timeout time.Duration) *AdminUpdateRoleV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update role v4 params
func (o *AdminUpdateRoleV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update role v4 params
func (o *AdminUpdateRoleV4Params) WithContext(ctx context.Context) *AdminUpdateRoleV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update role v4 params
func (o *AdminUpdateRoleV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the admin update role v4 params
func (o *AdminUpdateRoleV4Params) WithHTTPClient(client *http.Client) *AdminUpdateRoleV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update role v4 params
func (o *AdminUpdateRoleV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithBody adds the body to the admin update role v4 params
func (o *AdminUpdateRoleV4Params) WithBody(body *iamclientmodels.ModelRoleV4Request) *AdminUpdateRoleV4Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update role v4 params
func (o *AdminUpdateRoleV4Params) SetBody(body *iamclientmodels.ModelRoleV4Request) {
	o.Body = body
}

// WithRoleID adds the roleID to the admin update role v4 params
func (o *AdminUpdateRoleV4Params) WithRoleID(roleID string) *AdminUpdateRoleV4Params {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the admin update role v4 params
func (o *AdminUpdateRoleV4Params) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateRoleV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param roleId
	if err := r.SetPathParam("roleId", o.RoleID); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
