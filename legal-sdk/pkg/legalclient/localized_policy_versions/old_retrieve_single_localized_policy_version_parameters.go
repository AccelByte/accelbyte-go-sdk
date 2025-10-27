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
)

// NewOldRetrieveSingleLocalizedPolicyVersionParams creates a new OldRetrieveSingleLocalizedPolicyVersionParams object
// with the default values initialized.
func NewOldRetrieveSingleLocalizedPolicyVersionParams() *OldRetrieveSingleLocalizedPolicyVersionParams {
	var ()
	return &OldRetrieveSingleLocalizedPolicyVersionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewOldRetrieveSingleLocalizedPolicyVersionParamsWithTimeout creates a new OldRetrieveSingleLocalizedPolicyVersionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewOldRetrieveSingleLocalizedPolicyVersionParamsWithTimeout(timeout time.Duration) *OldRetrieveSingleLocalizedPolicyVersionParams {
	var ()
	return &OldRetrieveSingleLocalizedPolicyVersionParams{

		timeout: timeout,
	}
}

// NewOldRetrieveSingleLocalizedPolicyVersionParamsWithContext creates a new OldRetrieveSingleLocalizedPolicyVersionParams object
// with the default values initialized, and the ability to set a context for a request
func NewOldRetrieveSingleLocalizedPolicyVersionParamsWithContext(ctx context.Context) *OldRetrieveSingleLocalizedPolicyVersionParams {
	var ()
	return &OldRetrieveSingleLocalizedPolicyVersionParams{

		Context: ctx,
	}
}

// NewOldRetrieveSingleLocalizedPolicyVersionParamsWithHTTPClient creates a new OldRetrieveSingleLocalizedPolicyVersionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewOldRetrieveSingleLocalizedPolicyVersionParamsWithHTTPClient(client *http.Client) *OldRetrieveSingleLocalizedPolicyVersionParams {
	var ()
	return &OldRetrieveSingleLocalizedPolicyVersionParams{
		HTTPClient: client,
	}
}

/*OldRetrieveSingleLocalizedPolicyVersionParams contains all the parameters to send to the API endpoint
for the old retrieve single localized policy version operation typically these are written to a http.Request
*/
type OldRetrieveSingleLocalizedPolicyVersionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*LocalizedPolicyVersionID
	  Localized Policy Version Id

	*/
	LocalizedPolicyVersionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the old retrieve single localized policy version params
func (o *OldRetrieveSingleLocalizedPolicyVersionParams) WithTimeout(timeout time.Duration) *OldRetrieveSingleLocalizedPolicyVersionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the old retrieve single localized policy version params
func (o *OldRetrieveSingleLocalizedPolicyVersionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the old retrieve single localized policy version params
func (o *OldRetrieveSingleLocalizedPolicyVersionParams) WithContext(ctx context.Context) *OldRetrieveSingleLocalizedPolicyVersionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the old retrieve single localized policy version params
func (o *OldRetrieveSingleLocalizedPolicyVersionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the old retrieve single localized policy version params
func (o *OldRetrieveSingleLocalizedPolicyVersionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the old retrieve single localized policy version params
func (o *OldRetrieveSingleLocalizedPolicyVersionParams) WithHTTPClient(client *http.Client) *OldRetrieveSingleLocalizedPolicyVersionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the old retrieve single localized policy version params
func (o *OldRetrieveSingleLocalizedPolicyVersionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the old retrieve single localized policy version params
func (o *OldRetrieveSingleLocalizedPolicyVersionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *OldRetrieveSingleLocalizedPolicyVersionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithLocalizedPolicyVersionID adds the localizedPolicyVersionID to the old retrieve single localized policy version params
func (o *OldRetrieveSingleLocalizedPolicyVersionParams) WithLocalizedPolicyVersionID(localizedPolicyVersionID string) *OldRetrieveSingleLocalizedPolicyVersionParams {
	o.SetLocalizedPolicyVersionID(localizedPolicyVersionID)
	return o
}

// SetLocalizedPolicyVersionID adds the localizedPolicyVersionId to the old retrieve single localized policy version params
func (o *OldRetrieveSingleLocalizedPolicyVersionParams) SetLocalizedPolicyVersionID(localizedPolicyVersionID string) {
	o.LocalizedPolicyVersionID = localizedPolicyVersionID
}

// WriteToRequest writes these params to a swagger request
func (o *OldRetrieveSingleLocalizedPolicyVersionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param localizedPolicyVersionId
	if err := r.SetPathParam("localizedPolicyVersionId", o.LocalizedPolicyVersionID); err != nil {
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
