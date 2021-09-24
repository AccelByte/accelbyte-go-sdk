// Code generated by go-swagger; DO NOT EDIT.

package policy_versions

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

// NewRetrieveSinglePolicyVersionParams creates a new RetrieveSinglePolicyVersionParams object
// with the default values initialized.
func NewRetrieveSinglePolicyVersionParams() *RetrieveSinglePolicyVersionParams {
	var ()
	return &RetrieveSinglePolicyVersionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveSinglePolicyVersionParamsWithTimeout creates a new RetrieveSinglePolicyVersionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveSinglePolicyVersionParamsWithTimeout(timeout time.Duration) *RetrieveSinglePolicyVersionParams {
	var ()
	return &RetrieveSinglePolicyVersionParams{

		timeout: timeout,
	}
}

// NewRetrieveSinglePolicyVersionParamsWithContext creates a new RetrieveSinglePolicyVersionParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveSinglePolicyVersionParamsWithContext(ctx context.Context) *RetrieveSinglePolicyVersionParams {
	var ()
	return &RetrieveSinglePolicyVersionParams{

		Context: ctx,
	}
}

// NewRetrieveSinglePolicyVersionParamsWithHTTPClient creates a new RetrieveSinglePolicyVersionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveSinglePolicyVersionParamsWithHTTPClient(client *http.Client) *RetrieveSinglePolicyVersionParams {
	var ()
	return &RetrieveSinglePolicyVersionParams{
		HTTPClient: client,
	}
}

/*RetrieveSinglePolicyVersionParams contains all the parameters to send to the API endpoint
for the retrieve single policy version operation typically these are written to a http.Request
*/
type RetrieveSinglePolicyVersionParams struct {

	/*PolicyID
	  Policy Id

	*/
	PolicyID string
	/*VersionID
	  Version Id

	*/
	VersionID *string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) WithTimeout(timeout time.Duration) *RetrieveSinglePolicyVersionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) WithContext(ctx context.Context) *RetrieveSinglePolicyVersionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) WithHTTPClient(client *http.Client) *RetrieveSinglePolicyVersionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithPolicyID adds the policyID to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) WithPolicyID(policyID string) *RetrieveSinglePolicyVersionParams {
	o.SetPolicyID(policyID)
	return o
}

// SetPolicyID adds the policyId to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) SetPolicyID(policyID string) {
	o.PolicyID = policyID
}

// WithVersionID adds the versionID to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) WithVersionID(versionID *string) *RetrieveSinglePolicyVersionParams {
	o.SetVersionID(versionID)
	return o
}

// SetVersionID adds the versionId to the retrieve single policy version params
func (o *RetrieveSinglePolicyVersionParams) SetVersionID(versionID *string) {
	o.VersionID = versionID
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveSinglePolicyVersionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param policyId
	if err := r.SetPathParam("policyId", o.PolicyID); err != nil {
		return err
	}

	if o.VersionID != nil {

		// query param versionId
		var qrVersionID string
		if o.VersionID != nil {
			qrVersionID = *o.VersionID
		}
		qVersionID := qrVersionID
		if qVersionID != "" {
			if err := r.SetQueryParam("versionId", qVersionID); err != nil {
				return err
			}
		}

	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}