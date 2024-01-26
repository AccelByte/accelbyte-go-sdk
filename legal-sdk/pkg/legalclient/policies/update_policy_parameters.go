// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package policies

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// NewUpdatePolicyParams creates a new UpdatePolicyParams object
// with the default values initialized.
func NewUpdatePolicyParams() *UpdatePolicyParams {
	var ()
	return &UpdatePolicyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdatePolicyParamsWithTimeout creates a new UpdatePolicyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdatePolicyParamsWithTimeout(timeout time.Duration) *UpdatePolicyParams {
	var ()
	return &UpdatePolicyParams{

		timeout: timeout,
	}
}

// NewUpdatePolicyParamsWithContext creates a new UpdatePolicyParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdatePolicyParamsWithContext(ctx context.Context) *UpdatePolicyParams {
	var ()
	return &UpdatePolicyParams{

		Context: ctx,
	}
}

// NewUpdatePolicyParamsWithHTTPClient creates a new UpdatePolicyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdatePolicyParamsWithHTTPClient(client *http.Client) *UpdatePolicyParams {
	var ()
	return &UpdatePolicyParams{
		HTTPClient: client,
	}
}

/*UpdatePolicyParams contains all the parameters to send to the API endpoint
for the update policy operation typically these are written to a http.Request
*/
type UpdatePolicyParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *legalclientmodels.UpdatePolicyRequest
	/*PolicyID
	  Policy Id

	*/
	PolicyID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update policy params
func (o *UpdatePolicyParams) WithTimeout(timeout time.Duration) *UpdatePolicyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update policy params
func (o *UpdatePolicyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update policy params
func (o *UpdatePolicyParams) WithContext(ctx context.Context) *UpdatePolicyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update policy params
func (o *UpdatePolicyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update policy params
func (o *UpdatePolicyParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update policy params
func (o *UpdatePolicyParams) WithHTTPClient(client *http.Client) *UpdatePolicyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update policy params
func (o *UpdatePolicyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update policy params
func (o *UpdatePolicyParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdatePolicyParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update policy params
func (o *UpdatePolicyParams) WithBody(body *legalclientmodels.UpdatePolicyRequest) *UpdatePolicyParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update policy params
func (o *UpdatePolicyParams) SetBody(body *legalclientmodels.UpdatePolicyRequest) {
	o.Body = body
}

// WithPolicyID adds the policyID to the update policy params
func (o *UpdatePolicyParams) WithPolicyID(policyID string) *UpdatePolicyParams {
	o.SetPolicyID(policyID)
	return o
}

// SetPolicyID adds the policyId to the update policy params
func (o *UpdatePolicyParams) SetPolicyID(policyID string) {
	o.PolicyID = policyID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdatePolicyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param policyId
	if err := r.SetPathParam("policyId", o.PolicyID); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
