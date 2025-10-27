// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package policy_versions

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

// NewOldUpdatePolicyVersionParams creates a new OldUpdatePolicyVersionParams object
// with the default values initialized.
func NewOldUpdatePolicyVersionParams() *OldUpdatePolicyVersionParams {
	var ()
	return &OldUpdatePolicyVersionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewOldUpdatePolicyVersionParamsWithTimeout creates a new OldUpdatePolicyVersionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewOldUpdatePolicyVersionParamsWithTimeout(timeout time.Duration) *OldUpdatePolicyVersionParams {
	var ()
	return &OldUpdatePolicyVersionParams{

		timeout: timeout,
	}
}

// NewOldUpdatePolicyVersionParamsWithContext creates a new OldUpdatePolicyVersionParams object
// with the default values initialized, and the ability to set a context for a request
func NewOldUpdatePolicyVersionParamsWithContext(ctx context.Context) *OldUpdatePolicyVersionParams {
	var ()
	return &OldUpdatePolicyVersionParams{

		Context: ctx,
	}
}

// NewOldUpdatePolicyVersionParamsWithHTTPClient creates a new OldUpdatePolicyVersionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewOldUpdatePolicyVersionParamsWithHTTPClient(client *http.Client) *OldUpdatePolicyVersionParams {
	var ()
	return &OldUpdatePolicyVersionParams{
		HTTPClient: client,
	}
}

/*OldUpdatePolicyVersionParams contains all the parameters to send to the API endpoint
for the old update policy version operation typically these are written to a http.Request
*/
type OldUpdatePolicyVersionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *legalclientmodels.UpdatePolicyVersionRequest
	/*PolicyVersionID
	  Policy Version Id

	*/
	PolicyVersionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the old update policy version params
func (o *OldUpdatePolicyVersionParams) WithTimeout(timeout time.Duration) *OldUpdatePolicyVersionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the old update policy version params
func (o *OldUpdatePolicyVersionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the old update policy version params
func (o *OldUpdatePolicyVersionParams) WithContext(ctx context.Context) *OldUpdatePolicyVersionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the old update policy version params
func (o *OldUpdatePolicyVersionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the old update policy version params
func (o *OldUpdatePolicyVersionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the old update policy version params
func (o *OldUpdatePolicyVersionParams) WithHTTPClient(client *http.Client) *OldUpdatePolicyVersionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the old update policy version params
func (o *OldUpdatePolicyVersionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the old update policy version params
func (o *OldUpdatePolicyVersionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *OldUpdatePolicyVersionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the old update policy version params
func (o *OldUpdatePolicyVersionParams) WithBody(body *legalclientmodels.UpdatePolicyVersionRequest) *OldUpdatePolicyVersionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the old update policy version params
func (o *OldUpdatePolicyVersionParams) SetBody(body *legalclientmodels.UpdatePolicyVersionRequest) {
	o.Body = body
}

// WithPolicyVersionID adds the policyVersionID to the old update policy version params
func (o *OldUpdatePolicyVersionParams) WithPolicyVersionID(policyVersionID string) *OldUpdatePolicyVersionParams {
	o.SetPolicyVersionID(policyVersionID)
	return o
}

// SetPolicyVersionID adds the policyVersionId to the old update policy version params
func (o *OldUpdatePolicyVersionParams) SetPolicyVersionID(policyVersionID string) {
	o.PolicyVersionID = policyVersionID
}

// WriteToRequest writes these params to a swagger request
func (o *OldUpdatePolicyVersionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param policyVersionId
	if err := r.SetPathParam("policyVersionId", o.PolicyVersionID); err != nil {
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
