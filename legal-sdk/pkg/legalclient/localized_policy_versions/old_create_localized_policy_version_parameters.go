// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package localized_policy_versions

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

// NewOldCreateLocalizedPolicyVersionParams creates a new OldCreateLocalizedPolicyVersionParams object
// with the default values initialized.
func NewOldCreateLocalizedPolicyVersionParams() *OldCreateLocalizedPolicyVersionParams {
	var ()
	return &OldCreateLocalizedPolicyVersionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewOldCreateLocalizedPolicyVersionParamsWithTimeout creates a new OldCreateLocalizedPolicyVersionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewOldCreateLocalizedPolicyVersionParamsWithTimeout(timeout time.Duration) *OldCreateLocalizedPolicyVersionParams {
	var ()
	return &OldCreateLocalizedPolicyVersionParams{

		timeout: timeout,
	}
}

// NewOldCreateLocalizedPolicyVersionParamsWithContext creates a new OldCreateLocalizedPolicyVersionParams object
// with the default values initialized, and the ability to set a context for a request
func NewOldCreateLocalizedPolicyVersionParamsWithContext(ctx context.Context) *OldCreateLocalizedPolicyVersionParams {
	var ()
	return &OldCreateLocalizedPolicyVersionParams{

		Context: ctx,
	}
}

// NewOldCreateLocalizedPolicyVersionParamsWithHTTPClient creates a new OldCreateLocalizedPolicyVersionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewOldCreateLocalizedPolicyVersionParamsWithHTTPClient(client *http.Client) *OldCreateLocalizedPolicyVersionParams {
	var ()
	return &OldCreateLocalizedPolicyVersionParams{
		HTTPClient: client,
	}
}

/*OldCreateLocalizedPolicyVersionParams contains all the parameters to send to the API endpoint
for the old create localized policy version operation typically these are written to a http.Request
*/
type OldCreateLocalizedPolicyVersionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *legalclientmodels.CreateLocalizedPolicyVersionRequest
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

// WithTimeout adds the timeout to the old create localized policy version params
func (o *OldCreateLocalizedPolicyVersionParams) WithTimeout(timeout time.Duration) *OldCreateLocalizedPolicyVersionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the old create localized policy version params
func (o *OldCreateLocalizedPolicyVersionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the old create localized policy version params
func (o *OldCreateLocalizedPolicyVersionParams) WithContext(ctx context.Context) *OldCreateLocalizedPolicyVersionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the old create localized policy version params
func (o *OldCreateLocalizedPolicyVersionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the old create localized policy version params
func (o *OldCreateLocalizedPolicyVersionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the old create localized policy version params
func (o *OldCreateLocalizedPolicyVersionParams) WithHTTPClient(client *http.Client) *OldCreateLocalizedPolicyVersionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the old create localized policy version params
func (o *OldCreateLocalizedPolicyVersionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the old create localized policy version params
func (o *OldCreateLocalizedPolicyVersionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *OldCreateLocalizedPolicyVersionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the old create localized policy version params
func (o *OldCreateLocalizedPolicyVersionParams) WithBody(body *legalclientmodels.CreateLocalizedPolicyVersionRequest) *OldCreateLocalizedPolicyVersionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the old create localized policy version params
func (o *OldCreateLocalizedPolicyVersionParams) SetBody(body *legalclientmodels.CreateLocalizedPolicyVersionRequest) {
	o.Body = body
}

// WithPolicyVersionID adds the policyVersionID to the old create localized policy version params
func (o *OldCreateLocalizedPolicyVersionParams) WithPolicyVersionID(policyVersionID string) *OldCreateLocalizedPolicyVersionParams {
	o.SetPolicyVersionID(policyVersionID)
	return o
}

// SetPolicyVersionID adds the policyVersionId to the old create localized policy version params
func (o *OldCreateLocalizedPolicyVersionParams) SetPolicyVersionID(policyVersionID string) {
	o.PolicyVersionID = policyVersionID
}

// WriteToRequest writes these params to a swagger request
func (o *OldCreateLocalizedPolicyVersionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
