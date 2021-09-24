// Code generated by go-swagger; DO NOT EDIT.

package localized_policy_versions

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

// NewSetDefaultPolicyParams creates a new SetDefaultPolicyParams object
// with the default values initialized.
func NewSetDefaultPolicyParams() *SetDefaultPolicyParams {
	var ()
	return &SetDefaultPolicyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSetDefaultPolicyParamsWithTimeout creates a new SetDefaultPolicyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSetDefaultPolicyParamsWithTimeout(timeout time.Duration) *SetDefaultPolicyParams {
	var ()
	return &SetDefaultPolicyParams{

		timeout: timeout,
	}
}

// NewSetDefaultPolicyParamsWithContext creates a new SetDefaultPolicyParams object
// with the default values initialized, and the ability to set a context for a request
func NewSetDefaultPolicyParamsWithContext(ctx context.Context) *SetDefaultPolicyParams {
	var ()
	return &SetDefaultPolicyParams{

		Context: ctx,
	}
}

// NewSetDefaultPolicyParamsWithHTTPClient creates a new SetDefaultPolicyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSetDefaultPolicyParamsWithHTTPClient(client *http.Client) *SetDefaultPolicyParams {
	var ()
	return &SetDefaultPolicyParams{
		HTTPClient: client,
	}
}

/*SetDefaultPolicyParams contains all the parameters to send to the API endpoint
for the set default policy operation typically these are written to a http.Request
*/
type SetDefaultPolicyParams struct {

	/*LocalizedPolicyVersionID
	  Localized Policy Version Id

	*/
	LocalizedPolicyVersionID string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the set default policy params
func (o *SetDefaultPolicyParams) WithTimeout(timeout time.Duration) *SetDefaultPolicyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the set default policy params
func (o *SetDefaultPolicyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the set default policy params
func (o *SetDefaultPolicyParams) WithContext(ctx context.Context) *SetDefaultPolicyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the set default policy params
func (o *SetDefaultPolicyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the set default policy params
func (o *SetDefaultPolicyParams) WithHTTPClient(client *http.Client) *SetDefaultPolicyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the set default policy params
func (o *SetDefaultPolicyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithLocalizedPolicyVersionID adds the localizedPolicyVersionID to the set default policy params
func (o *SetDefaultPolicyParams) WithLocalizedPolicyVersionID(localizedPolicyVersionID string) *SetDefaultPolicyParams {
	o.SetLocalizedPolicyVersionID(localizedPolicyVersionID)
	return o
}

// SetLocalizedPolicyVersionID adds the localizedPolicyVersionId to the set default policy params
func (o *SetDefaultPolicyParams) SetLocalizedPolicyVersionID(localizedPolicyVersionID string) {
	o.LocalizedPolicyVersionID = localizedPolicyVersionID
}

// WriteToRequest writes these params to a swagger request
func (o *SetDefaultPolicyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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