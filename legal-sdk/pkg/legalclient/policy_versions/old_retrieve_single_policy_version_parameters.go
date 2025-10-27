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
)

// NewOldRetrieveSinglePolicyVersionParams creates a new OldRetrieveSinglePolicyVersionParams object
// with the default values initialized.
func NewOldRetrieveSinglePolicyVersionParams() *OldRetrieveSinglePolicyVersionParams {
	var ()
	return &OldRetrieveSinglePolicyVersionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewOldRetrieveSinglePolicyVersionParamsWithTimeout creates a new OldRetrieveSinglePolicyVersionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewOldRetrieveSinglePolicyVersionParamsWithTimeout(timeout time.Duration) *OldRetrieveSinglePolicyVersionParams {
	var ()
	return &OldRetrieveSinglePolicyVersionParams{

		timeout: timeout,
	}
}

// NewOldRetrieveSinglePolicyVersionParamsWithContext creates a new OldRetrieveSinglePolicyVersionParams object
// with the default values initialized, and the ability to set a context for a request
func NewOldRetrieveSinglePolicyVersionParamsWithContext(ctx context.Context) *OldRetrieveSinglePolicyVersionParams {
	var ()
	return &OldRetrieveSinglePolicyVersionParams{

		Context: ctx,
	}
}

// NewOldRetrieveSinglePolicyVersionParamsWithHTTPClient creates a new OldRetrieveSinglePolicyVersionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewOldRetrieveSinglePolicyVersionParamsWithHTTPClient(client *http.Client) *OldRetrieveSinglePolicyVersionParams {
	var ()
	return &OldRetrieveSinglePolicyVersionParams{
		HTTPClient: client,
	}
}

/*OldRetrieveSinglePolicyVersionParams contains all the parameters to send to the API endpoint
for the old retrieve single policy version operation typically these are written to a http.Request
*/
type OldRetrieveSinglePolicyVersionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*PolicyID
	  Policy Id

	*/
	PolicyID string
	/*VersionID
	  Version Id

	*/
	VersionID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the old retrieve single policy version params
func (o *OldRetrieveSinglePolicyVersionParams) WithTimeout(timeout time.Duration) *OldRetrieveSinglePolicyVersionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the old retrieve single policy version params
func (o *OldRetrieveSinglePolicyVersionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the old retrieve single policy version params
func (o *OldRetrieveSinglePolicyVersionParams) WithContext(ctx context.Context) *OldRetrieveSinglePolicyVersionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the old retrieve single policy version params
func (o *OldRetrieveSinglePolicyVersionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the old retrieve single policy version params
func (o *OldRetrieveSinglePolicyVersionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the old retrieve single policy version params
func (o *OldRetrieveSinglePolicyVersionParams) WithHTTPClient(client *http.Client) *OldRetrieveSinglePolicyVersionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the old retrieve single policy version params
func (o *OldRetrieveSinglePolicyVersionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the old retrieve single policy version params
func (o *OldRetrieveSinglePolicyVersionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *OldRetrieveSinglePolicyVersionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithPolicyID adds the policyID to the old retrieve single policy version params
func (o *OldRetrieveSinglePolicyVersionParams) WithPolicyID(policyID string) *OldRetrieveSinglePolicyVersionParams {
	o.SetPolicyID(policyID)
	return o
}

// SetPolicyID adds the policyId to the old retrieve single policy version params
func (o *OldRetrieveSinglePolicyVersionParams) SetPolicyID(policyID string) {
	o.PolicyID = policyID
}

// WithVersionID adds the versionID to the old retrieve single policy version params
func (o *OldRetrieveSinglePolicyVersionParams) WithVersionID(versionID *string) *OldRetrieveSinglePolicyVersionParams {
	o.SetVersionID(versionID)
	return o
}

// SetVersionID adds the versionId to the old retrieve single policy version params
func (o *OldRetrieveSinglePolicyVersionParams) SetVersionID(versionID *string) {
	o.VersionID = versionID
}

// WriteToRequest writes these params to a swagger request
func (o *OldRetrieveSinglePolicyVersionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
