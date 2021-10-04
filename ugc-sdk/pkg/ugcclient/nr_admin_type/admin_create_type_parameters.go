// Code generated by go-swagger; DO NOT EDIT.

package nr_admin_type

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

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewAdminCreateTypeParams creates a new AdminCreateTypeParams object
// with the default values initialized.
func NewAdminCreateTypeParams() *AdminCreateTypeParams {
	var ()
	return &AdminCreateTypeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCreateTypeParamsWithTimeout creates a new AdminCreateTypeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCreateTypeParamsWithTimeout(timeout time.Duration) *AdminCreateTypeParams {
	var ()
	return &AdminCreateTypeParams{

		timeout: timeout,
	}
}

// NewAdminCreateTypeParamsWithContext creates a new AdminCreateTypeParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCreateTypeParamsWithContext(ctx context.Context) *AdminCreateTypeParams {
	var ()
	return &AdminCreateTypeParams{

		Context: ctx,
	}
}

// NewAdminCreateTypeParamsWithHTTPClient creates a new AdminCreateTypeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCreateTypeParamsWithHTTPClient(client *http.Client) *AdminCreateTypeParams {
	var ()
	return &AdminCreateTypeParams{
		HTTPClient: client,
	}
}

/*AdminCreateTypeParams contains all the parameters to send to the API endpoint
for the admin create type operation typically these are written to a http.Request
*/
type AdminCreateTypeParams struct {

	/*Body*/
	Body *ugcclientmodels.ModelsCreateTypeRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the admin create type params
func (o *AdminCreateTypeParams) WithTimeout(timeout time.Duration) *AdminCreateTypeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin create type params
func (o *AdminCreateTypeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin create type params
func (o *AdminCreateTypeParams) WithContext(ctx context.Context) *AdminCreateTypeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin create type params
func (o *AdminCreateTypeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the admin create type params
func (o *AdminCreateTypeParams) WithHTTPClient(client *http.Client) *AdminCreateTypeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin create type params
func (o *AdminCreateTypeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithBody adds the body to the admin create type params
func (o *AdminCreateTypeParams) WithBody(body *ugcclientmodels.ModelsCreateTypeRequest) *AdminCreateTypeParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin create type params
func (o *AdminCreateTypeParams) SetBody(body *ugcclientmodels.ModelsCreateTypeRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin create type params
func (o *AdminCreateTypeParams) WithNamespace(namespace string) *AdminCreateTypeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin create type params
func (o *AdminCreateTypeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCreateTypeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}