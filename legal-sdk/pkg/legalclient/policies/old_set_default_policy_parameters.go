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
)

// NewOldSetDefaultPolicyParams creates a new OldSetDefaultPolicyParams object
// with the default values initialized.
func NewOldSetDefaultPolicyParams() *OldSetDefaultPolicyParams {
	var ()
	return &OldSetDefaultPolicyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewOldSetDefaultPolicyParamsWithTimeout creates a new OldSetDefaultPolicyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewOldSetDefaultPolicyParamsWithTimeout(timeout time.Duration) *OldSetDefaultPolicyParams {
	var ()
	return &OldSetDefaultPolicyParams{

		timeout: timeout,
	}
}

// NewOldSetDefaultPolicyParamsWithContext creates a new OldSetDefaultPolicyParams object
// with the default values initialized, and the ability to set a context for a request
func NewOldSetDefaultPolicyParamsWithContext(ctx context.Context) *OldSetDefaultPolicyParams {
	var ()
	return &OldSetDefaultPolicyParams{

		Context: ctx,
	}
}

// NewOldSetDefaultPolicyParamsWithHTTPClient creates a new OldSetDefaultPolicyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewOldSetDefaultPolicyParamsWithHTTPClient(client *http.Client) *OldSetDefaultPolicyParams {
	var ()
	return &OldSetDefaultPolicyParams{
		HTTPClient: client,
	}
}

/*OldSetDefaultPolicyParams contains all the parameters to send to the API endpoint
for the old set default policy operation typically these are written to a http.Request
*/
type OldSetDefaultPolicyParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the old set default policy params
func (o *OldSetDefaultPolicyParams) WithTimeout(timeout time.Duration) *OldSetDefaultPolicyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the old set default policy params
func (o *OldSetDefaultPolicyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the old set default policy params
func (o *OldSetDefaultPolicyParams) WithContext(ctx context.Context) *OldSetDefaultPolicyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the old set default policy params
func (o *OldSetDefaultPolicyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the old set default policy params
func (o *OldSetDefaultPolicyParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the old set default policy params
func (o *OldSetDefaultPolicyParams) WithHTTPClient(client *http.Client) *OldSetDefaultPolicyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the old set default policy params
func (o *OldSetDefaultPolicyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the old set default policy params
func (o *OldSetDefaultPolicyParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *OldSetDefaultPolicyParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithPolicyID adds the policyID to the old set default policy params
func (o *OldSetDefaultPolicyParams) WithPolicyID(policyID string) *OldSetDefaultPolicyParams {
	o.SetPolicyID(policyID)
	return o
}

// SetPolicyID adds the policyId to the old set default policy params
func (o *OldSetDefaultPolicyParams) SetPolicyID(policyID string) {
	o.PolicyID = policyID
}

// WriteToRequest writes these params to a swagger request
func (o *OldSetDefaultPolicyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
