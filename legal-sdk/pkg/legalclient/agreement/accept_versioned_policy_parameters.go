// Code generated by go-swagger; DO NOT EDIT.

package agreement

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

// NewAcceptVersionedPolicyParams creates a new AcceptVersionedPolicyParams object
// with the default values initialized.
func NewAcceptVersionedPolicyParams() *AcceptVersionedPolicyParams {
	var ()
	return &AcceptVersionedPolicyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAcceptVersionedPolicyParamsWithTimeout creates a new AcceptVersionedPolicyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAcceptVersionedPolicyParamsWithTimeout(timeout time.Duration) *AcceptVersionedPolicyParams {
	var ()
	return &AcceptVersionedPolicyParams{

		timeout: timeout,
	}
}

// NewAcceptVersionedPolicyParamsWithContext creates a new AcceptVersionedPolicyParams object
// with the default values initialized, and the ability to set a context for a request
func NewAcceptVersionedPolicyParamsWithContext(ctx context.Context) *AcceptVersionedPolicyParams {
	var ()
	return &AcceptVersionedPolicyParams{

		Context: ctx,
	}
}

// NewAcceptVersionedPolicyParamsWithHTTPClient creates a new AcceptVersionedPolicyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAcceptVersionedPolicyParamsWithHTTPClient(client *http.Client) *AcceptVersionedPolicyParams {
	var ()
	return &AcceptVersionedPolicyParams{
		HTTPClient: client,
	}
}

/*AcceptVersionedPolicyParams contains all the parameters to send to the API endpoint
for the accept versioned policy operation typically these are written to a http.Request
*/
type AcceptVersionedPolicyParams struct {

	/*LocalizedPolicyVersionID
	  Localized Policy Version Id

	*/
	LocalizedPolicyVersionID string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the accept versioned policy params
func (o *AcceptVersionedPolicyParams) WithTimeout(timeout time.Duration) *AcceptVersionedPolicyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the accept versioned policy params
func (o *AcceptVersionedPolicyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the accept versioned policy params
func (o *AcceptVersionedPolicyParams) WithContext(ctx context.Context) *AcceptVersionedPolicyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the accept versioned policy params
func (o *AcceptVersionedPolicyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the accept versioned policy params
func (o *AcceptVersionedPolicyParams) WithHTTPClient(client *http.Client) *AcceptVersionedPolicyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the accept versioned policy params
func (o *AcceptVersionedPolicyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithLocalizedPolicyVersionID adds the localizedPolicyVersionID to the accept versioned policy params
func (o *AcceptVersionedPolicyParams) WithLocalizedPolicyVersionID(localizedPolicyVersionID string) *AcceptVersionedPolicyParams {
	o.SetLocalizedPolicyVersionID(localizedPolicyVersionID)
	return o
}

// SetLocalizedPolicyVersionID adds the localizedPolicyVersionId to the accept versioned policy params
func (o *AcceptVersionedPolicyParams) SetLocalizedPolicyVersionID(localizedPolicyVersionID string) {
	o.LocalizedPolicyVersionID = localizedPolicyVersionID
}

// WriteToRequest writes these params to a swagger request
func (o *AcceptVersionedPolicyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param localizedPolicyVersionId
	if err := r.SetPathParam("localizedPolicyVersionId", o.LocalizedPolicyVersionID); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}