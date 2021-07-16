// Code generated by go-swagger; DO NOT EDIT.

package stat_configuration

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
)

// NewGetStatParams creates a new GetStatParams object
// with the default values initialized.
func NewGetStatParams() *GetStatParams {
	var ()
	return &GetStatParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetStatParamsWithTimeout creates a new GetStatParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetStatParamsWithTimeout(timeout time.Duration) *GetStatParams {
	var ()
	return &GetStatParams{

		timeout: timeout,
	}
}

// NewGetStatParamsWithContext creates a new GetStatParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetStatParamsWithContext(ctx context.Context) *GetStatParams {
	var ()
	return &GetStatParams{

		Context: ctx,
	}
}

// NewGetStatParamsWithHTTPClient creates a new GetStatParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetStatParamsWithHTTPClient(client *http.Client) *GetStatParams {
	var ()
	return &GetStatParams{
		HTTPClient: client,
	}
}

/*GetStatParams contains all the parameters to send to the API endpoint
for the get stat operation typically these are written to a http.Request
*/
type GetStatParams struct {

	/*Namespace
	  namespace

	*/
	Namespace string
	/*StatCode
	  stat Code

	*/
	StatCode string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the get stat params
func (o *GetStatParams) WithTimeout(timeout time.Duration) *GetStatParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get stat params
func (o *GetStatParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get stat params
func (o *GetStatParams) WithContext(ctx context.Context) *GetStatParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get stat params
func (o *GetStatParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the get stat params
func (o *GetStatParams) WithHTTPClient(client *http.Client) *GetStatParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get stat params
func (o *GetStatParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithNamespace adds the namespace to the get stat params
func (o *GetStatParams) WithNamespace(namespace string) *GetStatParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get stat params
func (o *GetStatParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStatCode adds the statCode to the get stat params
func (o *GetStatParams) WithStatCode(statCode string) *GetStatParams {
	o.SetStatCode(statCode)
	return o
}

// SetStatCode adds the statCode to the get stat params
func (o *GetStatParams) SetStatCode(statCode string) {
	o.StatCode = statCode
}

// WriteToRequest writes these params to a swagger request
func (o *GetStatParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param statCode
	if err := r.SetPathParam("statCode", o.StatCode); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
