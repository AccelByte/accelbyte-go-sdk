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
	"github.com/go-openapi/swag"
)

// NewOldPublishPolicyVersionParams creates a new OldPublishPolicyVersionParams object
// with the default values initialized.
func NewOldPublishPolicyVersionParams() *OldPublishPolicyVersionParams {
	var (
		shouldNotifyDefault = bool(true)
	)
	return &OldPublishPolicyVersionParams{
		ShouldNotify: &shouldNotifyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewOldPublishPolicyVersionParamsWithTimeout creates a new OldPublishPolicyVersionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewOldPublishPolicyVersionParamsWithTimeout(timeout time.Duration) *OldPublishPolicyVersionParams {
	var (
		shouldNotifyDefault = bool(true)
	)
	return &OldPublishPolicyVersionParams{
		ShouldNotify: &shouldNotifyDefault,

		timeout: timeout,
	}
}

// NewOldPublishPolicyVersionParamsWithContext creates a new OldPublishPolicyVersionParams object
// with the default values initialized, and the ability to set a context for a request
func NewOldPublishPolicyVersionParamsWithContext(ctx context.Context) *OldPublishPolicyVersionParams {
	var (
		shouldNotifyDefault = bool(true)
	)
	return &OldPublishPolicyVersionParams{
		ShouldNotify: &shouldNotifyDefault,

		Context: ctx,
	}
}

// NewOldPublishPolicyVersionParamsWithHTTPClient creates a new OldPublishPolicyVersionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewOldPublishPolicyVersionParamsWithHTTPClient(client *http.Client) *OldPublishPolicyVersionParams {
	var (
		shouldNotifyDefault = bool(true)
	)
	return &OldPublishPolicyVersionParams{
		ShouldNotify: &shouldNotifyDefault,
		HTTPClient:   client,
	}
}

/*OldPublishPolicyVersionParams contains all the parameters to send to the API endpoint
for the old publish policy version operation typically these are written to a http.Request
*/
type OldPublishPolicyVersionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*PolicyVersionID
	  Policy Version Id

	*/
	PolicyVersionID string
	/*ShouldNotify
	  Should Notify

	*/
	ShouldNotify *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the old publish policy version params
func (o *OldPublishPolicyVersionParams) WithTimeout(timeout time.Duration) *OldPublishPolicyVersionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the old publish policy version params
func (o *OldPublishPolicyVersionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the old publish policy version params
func (o *OldPublishPolicyVersionParams) WithContext(ctx context.Context) *OldPublishPolicyVersionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the old publish policy version params
func (o *OldPublishPolicyVersionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the old publish policy version params
func (o *OldPublishPolicyVersionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the old publish policy version params
func (o *OldPublishPolicyVersionParams) WithHTTPClient(client *http.Client) *OldPublishPolicyVersionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the old publish policy version params
func (o *OldPublishPolicyVersionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the old publish policy version params
func (o *OldPublishPolicyVersionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *OldPublishPolicyVersionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithPolicyVersionID adds the policyVersionID to the old publish policy version params
func (o *OldPublishPolicyVersionParams) WithPolicyVersionID(policyVersionID string) *OldPublishPolicyVersionParams {
	o.SetPolicyVersionID(policyVersionID)
	return o
}

// SetPolicyVersionID adds the policyVersionId to the old publish policy version params
func (o *OldPublishPolicyVersionParams) SetPolicyVersionID(policyVersionID string) {
	o.PolicyVersionID = policyVersionID
}

// WithShouldNotify adds the shouldNotify to the old publish policy version params
func (o *OldPublishPolicyVersionParams) WithShouldNotify(shouldNotify *bool) *OldPublishPolicyVersionParams {
	o.SetShouldNotify(shouldNotify)
	return o
}

// SetShouldNotify adds the shouldNotify to the old publish policy version params
func (o *OldPublishPolicyVersionParams) SetShouldNotify(shouldNotify *bool) {
	o.ShouldNotify = shouldNotify
}

// WriteToRequest writes these params to a swagger request
func (o *OldPublishPolicyVersionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param policyVersionId
	if err := r.SetPathParam("policyVersionId", o.PolicyVersionID); err != nil {
		return err
	}

	if o.ShouldNotify != nil {

		// query param shouldNotify
		var qrShouldNotify bool
		if o.ShouldNotify != nil {
			qrShouldNotify = *o.ShouldNotify
		}
		qShouldNotify := swag.FormatBool(qrShouldNotify)
		if qShouldNotify != "" {
			if err := r.SetQueryParam("shouldNotify", qShouldNotify); err != nil {
				return err
			}
		}

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
