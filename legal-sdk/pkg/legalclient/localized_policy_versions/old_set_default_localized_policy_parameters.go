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

// NewOldSetDefaultLocalizedPolicyParams creates a new OldSetDefaultLocalizedPolicyParams object
// with the default values initialized.
func NewOldSetDefaultLocalizedPolicyParams() *OldSetDefaultLocalizedPolicyParams {
	var ()
	return &OldSetDefaultLocalizedPolicyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewOldSetDefaultLocalizedPolicyParamsWithTimeout creates a new OldSetDefaultLocalizedPolicyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewOldSetDefaultLocalizedPolicyParamsWithTimeout(timeout time.Duration) *OldSetDefaultLocalizedPolicyParams {
	var ()
	return &OldSetDefaultLocalizedPolicyParams{

		timeout: timeout,
	}
}

// NewOldSetDefaultLocalizedPolicyParamsWithContext creates a new OldSetDefaultLocalizedPolicyParams object
// with the default values initialized, and the ability to set a context for a request
func NewOldSetDefaultLocalizedPolicyParamsWithContext(ctx context.Context) *OldSetDefaultLocalizedPolicyParams {
	var ()
	return &OldSetDefaultLocalizedPolicyParams{

		Context: ctx,
	}
}

// NewOldSetDefaultLocalizedPolicyParamsWithHTTPClient creates a new OldSetDefaultLocalizedPolicyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewOldSetDefaultLocalizedPolicyParamsWithHTTPClient(client *http.Client) *OldSetDefaultLocalizedPolicyParams {
	var ()
	return &OldSetDefaultLocalizedPolicyParams{
		HTTPClient: client,
	}
}

/*OldSetDefaultLocalizedPolicyParams contains all the parameters to send to the API endpoint
for the old set default localized policy operation typically these are written to a http.Request
*/
type OldSetDefaultLocalizedPolicyParams struct {

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

// WithTimeout adds the timeout to the old set default localized policy params
func (o *OldSetDefaultLocalizedPolicyParams) WithTimeout(timeout time.Duration) *OldSetDefaultLocalizedPolicyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the old set default localized policy params
func (o *OldSetDefaultLocalizedPolicyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the old set default localized policy params
func (o *OldSetDefaultLocalizedPolicyParams) WithContext(ctx context.Context) *OldSetDefaultLocalizedPolicyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the old set default localized policy params
func (o *OldSetDefaultLocalizedPolicyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the old set default localized policy params
func (o *OldSetDefaultLocalizedPolicyParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the old set default localized policy params
func (o *OldSetDefaultLocalizedPolicyParams) WithHTTPClient(client *http.Client) *OldSetDefaultLocalizedPolicyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the old set default localized policy params
func (o *OldSetDefaultLocalizedPolicyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the old set default localized policy params
func (o *OldSetDefaultLocalizedPolicyParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *OldSetDefaultLocalizedPolicyParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithLocalizedPolicyVersionID adds the localizedPolicyVersionID to the old set default localized policy params
func (o *OldSetDefaultLocalizedPolicyParams) WithLocalizedPolicyVersionID(localizedPolicyVersionID string) *OldSetDefaultLocalizedPolicyParams {
	o.SetLocalizedPolicyVersionID(localizedPolicyVersionID)
	return o
}

// SetLocalizedPolicyVersionID adds the localizedPolicyVersionId to the old set default localized policy params
func (o *OldSetDefaultLocalizedPolicyParams) SetLocalizedPolicyVersionID(localizedPolicyVersionID string) {
	o.LocalizedPolicyVersionID = localizedPolicyVersionID
}

// WriteToRequest writes these params to a swagger request
func (o *OldSetDefaultLocalizedPolicyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
