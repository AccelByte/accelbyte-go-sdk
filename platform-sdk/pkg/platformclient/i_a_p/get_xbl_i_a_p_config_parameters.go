// Code generated by go-swagger; DO NOT EDIT.

package i_a_p

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

// NewGetXblIAPConfigParams creates a new GetXblIAPConfigParams object
// with the default values initialized.
func NewGetXblIAPConfigParams() *GetXblIAPConfigParams {
	var ()
	return &GetXblIAPConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetXblIAPConfigParamsWithTimeout creates a new GetXblIAPConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetXblIAPConfigParamsWithTimeout(timeout time.Duration) *GetXblIAPConfigParams {
	var ()
	return &GetXblIAPConfigParams{

		timeout: timeout,
	}
}

// NewGetXblIAPConfigParamsWithContext creates a new GetXblIAPConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetXblIAPConfigParamsWithContext(ctx context.Context) *GetXblIAPConfigParams {
	var ()
	return &GetXblIAPConfigParams{

		Context: ctx,
	}
}

// NewGetXblIAPConfigParamsWithHTTPClient creates a new GetXblIAPConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetXblIAPConfigParamsWithHTTPClient(client *http.Client) *GetXblIAPConfigParams {
	var ()
	return &GetXblIAPConfigParams{
		HTTPClient: client,
	}
}

/*GetXblIAPConfigParams contains all the parameters to send to the API endpoint
for the get xbl i a p config operation typically these are written to a http.Request
*/
type GetXblIAPConfigParams struct {

	/*Namespace*/
	Namespace string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the get xbl i a p config params
func (o *GetXblIAPConfigParams) WithTimeout(timeout time.Duration) *GetXblIAPConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get xbl i a p config params
func (o *GetXblIAPConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get xbl i a p config params
func (o *GetXblIAPConfigParams) WithContext(ctx context.Context) *GetXblIAPConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get xbl i a p config params
func (o *GetXblIAPConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the get xbl i a p config params
func (o *GetXblIAPConfigParams) WithHTTPClient(client *http.Client) *GetXblIAPConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get xbl i a p config params
func (o *GetXblIAPConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithNamespace adds the namespace to the get xbl i a p config params
func (o *GetXblIAPConfigParams) WithNamespace(namespace string) *GetXblIAPConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get xbl i a p config params
func (o *GetXblIAPConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetXblIAPConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
