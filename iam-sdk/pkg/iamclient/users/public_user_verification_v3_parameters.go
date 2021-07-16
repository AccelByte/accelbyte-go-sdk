// Code generated by go-swagger; DO NOT EDIT.

package users

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

// NewPublicUserVerificationV3Params creates a new PublicUserVerificationV3Params object
// with the default values initialized.
func NewPublicUserVerificationV3Params() *PublicUserVerificationV3Params {
	var ()
	return &PublicUserVerificationV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUserVerificationV3ParamsWithTimeout creates a new PublicUserVerificationV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUserVerificationV3ParamsWithTimeout(timeout time.Duration) *PublicUserVerificationV3Params {
	var ()
	return &PublicUserVerificationV3Params{

		timeout: timeout,
	}
}

// NewPublicUserVerificationV3ParamsWithContext creates a new PublicUserVerificationV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUserVerificationV3ParamsWithContext(ctx context.Context) *PublicUserVerificationV3Params {
	var ()
	return &PublicUserVerificationV3Params{

		Context: ctx,
	}
}

// NewPublicUserVerificationV3ParamsWithHTTPClient creates a new PublicUserVerificationV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUserVerificationV3ParamsWithHTTPClient(client *http.Client) *PublicUserVerificationV3Params {
	var ()
	return &PublicUserVerificationV3Params{
		HTTPClient: client,
	}
}

/*PublicUserVerificationV3Params contains all the parameters to send to the API endpoint
for the public user verification v3 operation typically these are written to a http.Request
*/
type PublicUserVerificationV3Params struct {

	/*Body*/
	Body *iamclientmodels.ModelUserVerificationRequestV3
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the public user verification v3 params
func (o *PublicUserVerificationV3Params) WithTimeout(timeout time.Duration) *PublicUserVerificationV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public user verification v3 params
func (o *PublicUserVerificationV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public user verification v3 params
func (o *PublicUserVerificationV3Params) WithContext(ctx context.Context) *PublicUserVerificationV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public user verification v3 params
func (o *PublicUserVerificationV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the public user verification v3 params
func (o *PublicUserVerificationV3Params) WithHTTPClient(client *http.Client) *PublicUserVerificationV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public user verification v3 params
func (o *PublicUserVerificationV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithBody adds the body to the public user verification v3 params
func (o *PublicUserVerificationV3Params) WithBody(body *iamclientmodels.ModelUserVerificationRequestV3) *PublicUserVerificationV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public user verification v3 params
func (o *PublicUserVerificationV3Params) SetBody(body *iamclientmodels.ModelUserVerificationRequestV3) {
	o.Body = body
}

// WithNamespace adds the namespace to the public user verification v3 params
func (o *PublicUserVerificationV3Params) WithNamespace(namespace string) *PublicUserVerificationV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public user verification v3 params
func (o *PublicUserVerificationV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUserVerificationV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
