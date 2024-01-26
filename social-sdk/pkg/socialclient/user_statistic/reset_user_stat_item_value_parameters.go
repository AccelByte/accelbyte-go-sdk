// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// NewResetUserStatItemValueParams creates a new ResetUserStatItemValueParams object
// with the default values initialized.
func NewResetUserStatItemValueParams() *ResetUserStatItemValueParams {
	var ()
	return &ResetUserStatItemValueParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewResetUserStatItemValueParamsWithTimeout creates a new ResetUserStatItemValueParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewResetUserStatItemValueParamsWithTimeout(timeout time.Duration) *ResetUserStatItemValueParams {
	var ()
	return &ResetUserStatItemValueParams{

		timeout: timeout,
	}
}

// NewResetUserStatItemValueParamsWithContext creates a new ResetUserStatItemValueParams object
// with the default values initialized, and the ability to set a context for a request
func NewResetUserStatItemValueParamsWithContext(ctx context.Context) *ResetUserStatItemValueParams {
	var ()
	return &ResetUserStatItemValueParams{

		Context: ctx,
	}
}

// NewResetUserStatItemValueParamsWithHTTPClient creates a new ResetUserStatItemValueParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewResetUserStatItemValueParamsWithHTTPClient(client *http.Client) *ResetUserStatItemValueParams {
	var ()
	return &ResetUserStatItemValueParams{
		HTTPClient: client,
	}
}

/*ResetUserStatItemValueParams contains all the parameters to send to the API endpoint
for the reset user stat item value operation typically these are written to a http.Request
*/
type ResetUserStatItemValueParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *socialclientmodels.StatResetInfo
	/*Namespace
	  namespace

	*/
	Namespace string
	/*StatCode
	  stat code

	*/
	StatCode string
	/*UserID
	  user ID

	*/
	UserID string
	/*AdditionalKey
	  additional key

	*/
	AdditionalKey *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the reset user stat item value params
func (o *ResetUserStatItemValueParams) WithTimeout(timeout time.Duration) *ResetUserStatItemValueParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the reset user stat item value params
func (o *ResetUserStatItemValueParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the reset user stat item value params
func (o *ResetUserStatItemValueParams) WithContext(ctx context.Context) *ResetUserStatItemValueParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the reset user stat item value params
func (o *ResetUserStatItemValueParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the reset user stat item value params
func (o *ResetUserStatItemValueParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the reset user stat item value params
func (o *ResetUserStatItemValueParams) WithHTTPClient(client *http.Client) *ResetUserStatItemValueParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the reset user stat item value params
func (o *ResetUserStatItemValueParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the reset user stat item value params
func (o *ResetUserStatItemValueParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ResetUserStatItemValueParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the reset user stat item value params
func (o *ResetUserStatItemValueParams) WithBody(body *socialclientmodels.StatResetInfo) *ResetUserStatItemValueParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the reset user stat item value params
func (o *ResetUserStatItemValueParams) SetBody(body *socialclientmodels.StatResetInfo) {
	o.Body = body
}

// WithNamespace adds the namespace to the reset user stat item value params
func (o *ResetUserStatItemValueParams) WithNamespace(namespace string) *ResetUserStatItemValueParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the reset user stat item value params
func (o *ResetUserStatItemValueParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStatCode adds the statCode to the reset user stat item value params
func (o *ResetUserStatItemValueParams) WithStatCode(statCode string) *ResetUserStatItemValueParams {
	o.SetStatCode(statCode)
	return o
}

// SetStatCode adds the statCode to the reset user stat item value params
func (o *ResetUserStatItemValueParams) SetStatCode(statCode string) {
	o.StatCode = statCode
}

// WithUserID adds the userID to the reset user stat item value params
func (o *ResetUserStatItemValueParams) WithUserID(userID string) *ResetUserStatItemValueParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the reset user stat item value params
func (o *ResetUserStatItemValueParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithAdditionalKey adds the additionalKey to the reset user stat item value params
func (o *ResetUserStatItemValueParams) WithAdditionalKey(additionalKey *string) *ResetUserStatItemValueParams {
	o.SetAdditionalKey(additionalKey)
	return o
}

// SetAdditionalKey adds the additionalKey to the reset user stat item value params
func (o *ResetUserStatItemValueParams) SetAdditionalKey(additionalKey *string) {
	o.AdditionalKey = additionalKey
}

// WriteToRequest writes these params to a swagger request
func (o *ResetUserStatItemValueParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param statCode
	if err := r.SetPathParam("statCode", o.StatCode); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if o.AdditionalKey != nil {

		// query param additionalKey
		var qrAdditionalKey string
		if o.AdditionalKey != nil {
			qrAdditionalKey = *o.AdditionalKey
		}
		qAdditionalKey := qrAdditionalKey
		if qAdditionalKey != "" {
			if err := r.SetQueryParam("additionalKey", qAdditionalKey); err != nil {
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
