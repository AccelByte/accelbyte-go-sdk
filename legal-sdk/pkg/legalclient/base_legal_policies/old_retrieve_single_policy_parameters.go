// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package base_legal_policies

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

// NewOldRetrieveSinglePolicyParams creates a new OldRetrieveSinglePolicyParams object
// with the default values initialized.
func NewOldRetrieveSinglePolicyParams() *OldRetrieveSinglePolicyParams {
	var ()
	return &OldRetrieveSinglePolicyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewOldRetrieveSinglePolicyParamsWithTimeout creates a new OldRetrieveSinglePolicyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewOldRetrieveSinglePolicyParamsWithTimeout(timeout time.Duration) *OldRetrieveSinglePolicyParams {
	var ()
	return &OldRetrieveSinglePolicyParams{

		timeout: timeout,
	}
}

// NewOldRetrieveSinglePolicyParamsWithContext creates a new OldRetrieveSinglePolicyParams object
// with the default values initialized, and the ability to set a context for a request
func NewOldRetrieveSinglePolicyParamsWithContext(ctx context.Context) *OldRetrieveSinglePolicyParams {
	var ()
	return &OldRetrieveSinglePolicyParams{

		Context: ctx,
	}
}

// NewOldRetrieveSinglePolicyParamsWithHTTPClient creates a new OldRetrieveSinglePolicyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewOldRetrieveSinglePolicyParamsWithHTTPClient(client *http.Client) *OldRetrieveSinglePolicyParams {
	var ()
	return &OldRetrieveSinglePolicyParams{
		HTTPClient: client,
	}
}

/*OldRetrieveSinglePolicyParams contains all the parameters to send to the API endpoint
for the old retrieve single policy operation typically these are written to a http.Request
*/
type OldRetrieveSinglePolicyParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*BasePolicyID
	  BasePolicy Id

	*/
	BasePolicyID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the old retrieve single policy params
func (o *OldRetrieveSinglePolicyParams) WithTimeout(timeout time.Duration) *OldRetrieveSinglePolicyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the old retrieve single policy params
func (o *OldRetrieveSinglePolicyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the old retrieve single policy params
func (o *OldRetrieveSinglePolicyParams) WithContext(ctx context.Context) *OldRetrieveSinglePolicyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the old retrieve single policy params
func (o *OldRetrieveSinglePolicyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the old retrieve single policy params
func (o *OldRetrieveSinglePolicyParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the old retrieve single policy params
func (o *OldRetrieveSinglePolicyParams) WithHTTPClient(client *http.Client) *OldRetrieveSinglePolicyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the old retrieve single policy params
func (o *OldRetrieveSinglePolicyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the old retrieve single policy params
func (o *OldRetrieveSinglePolicyParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *OldRetrieveSinglePolicyParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBasePolicyID adds the basePolicyID to the old retrieve single policy params
func (o *OldRetrieveSinglePolicyParams) WithBasePolicyID(basePolicyID string) *OldRetrieveSinglePolicyParams {
	o.SetBasePolicyID(basePolicyID)
	return o
}

// SetBasePolicyID adds the basePolicyId to the old retrieve single policy params
func (o *OldRetrieveSinglePolicyParams) SetBasePolicyID(basePolicyID string) {
	o.BasePolicyID = basePolicyID
}

// WriteToRequest writes these params to a swagger request
func (o *OldRetrieveSinglePolicyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param basePolicyId
	if err := r.SetPathParam("basePolicyId", o.BasePolicyID); err != nil {
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
