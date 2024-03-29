// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fulfillment

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewRedeemCodeParams creates a new RedeemCodeParams object
// with the default values initialized.
func NewRedeemCodeParams() *RedeemCodeParams {
	var ()
	return &RedeemCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRedeemCodeParamsWithTimeout creates a new RedeemCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRedeemCodeParamsWithTimeout(timeout time.Duration) *RedeemCodeParams {
	var ()
	return &RedeemCodeParams{

		timeout: timeout,
	}
}

// NewRedeemCodeParamsWithContext creates a new RedeemCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewRedeemCodeParamsWithContext(ctx context.Context) *RedeemCodeParams {
	var ()
	return &RedeemCodeParams{

		Context: ctx,
	}
}

// NewRedeemCodeParamsWithHTTPClient creates a new RedeemCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRedeemCodeParamsWithHTTPClient(client *http.Client) *RedeemCodeParams {
	var ()
	return &RedeemCodeParams{
		HTTPClient: client,
	}
}

/*RedeemCodeParams contains all the parameters to send to the API endpoint
for the redeem code operation typically these are written to a http.Request
*/
type RedeemCodeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.FulfillCodeRequest
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the redeem code params
func (o *RedeemCodeParams) WithTimeout(timeout time.Duration) *RedeemCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the redeem code params
func (o *RedeemCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the redeem code params
func (o *RedeemCodeParams) WithContext(ctx context.Context) *RedeemCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the redeem code params
func (o *RedeemCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the redeem code params
func (o *RedeemCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the redeem code params
func (o *RedeemCodeParams) WithHTTPClient(client *http.Client) *RedeemCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the redeem code params
func (o *RedeemCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the redeem code params
func (o *RedeemCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RedeemCodeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the redeem code params
func (o *RedeemCodeParams) WithBody(body *platformclientmodels.FulfillCodeRequest) *RedeemCodeParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the redeem code params
func (o *RedeemCodeParams) SetBody(body *platformclientmodels.FulfillCodeRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the redeem code params
func (o *RedeemCodeParams) WithNamespace(namespace string) *RedeemCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the redeem code params
func (o *RedeemCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the redeem code params
func (o *RedeemCodeParams) WithUserID(userID string) *RedeemCodeParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the redeem code params
func (o *RedeemCodeParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *RedeemCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
