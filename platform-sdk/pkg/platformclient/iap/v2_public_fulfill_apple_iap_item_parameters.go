// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

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

// NewV2PublicFulfillAppleIAPItemParams creates a new V2PublicFulfillAppleIAPItemParams object
// with the default values initialized.
func NewV2PublicFulfillAppleIAPItemParams() *V2PublicFulfillAppleIAPItemParams {
	var ()
	return &V2PublicFulfillAppleIAPItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewV2PublicFulfillAppleIAPItemParamsWithTimeout creates a new V2PublicFulfillAppleIAPItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewV2PublicFulfillAppleIAPItemParamsWithTimeout(timeout time.Duration) *V2PublicFulfillAppleIAPItemParams {
	var ()
	return &V2PublicFulfillAppleIAPItemParams{

		timeout: timeout,
	}
}

// NewV2PublicFulfillAppleIAPItemParamsWithContext creates a new V2PublicFulfillAppleIAPItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewV2PublicFulfillAppleIAPItemParamsWithContext(ctx context.Context) *V2PublicFulfillAppleIAPItemParams {
	var ()
	return &V2PublicFulfillAppleIAPItemParams{

		Context: ctx,
	}
}

// NewV2PublicFulfillAppleIAPItemParamsWithHTTPClient creates a new V2PublicFulfillAppleIAPItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewV2PublicFulfillAppleIAPItemParamsWithHTTPClient(client *http.Client) *V2PublicFulfillAppleIAPItemParams {
	var ()
	return &V2PublicFulfillAppleIAPItemParams{
		HTTPClient: client,
	}
}

/*V2PublicFulfillAppleIAPItemParams contains all the parameters to send to the API endpoint
for the v2 public fulfill apple iap item operation typically these are written to a http.Request
*/
type V2PublicFulfillAppleIAPItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.AppleIAPRequest
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

// WithTimeout adds the timeout to the v2 public fulfill apple iap item params
func (o *V2PublicFulfillAppleIAPItemParams) WithTimeout(timeout time.Duration) *V2PublicFulfillAppleIAPItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the v2 public fulfill apple iap item params
func (o *V2PublicFulfillAppleIAPItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the v2 public fulfill apple iap item params
func (o *V2PublicFulfillAppleIAPItemParams) WithContext(ctx context.Context) *V2PublicFulfillAppleIAPItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the v2 public fulfill apple iap item params
func (o *V2PublicFulfillAppleIAPItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the v2 public fulfill apple iap item params
func (o *V2PublicFulfillAppleIAPItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the v2 public fulfill apple iap item params
func (o *V2PublicFulfillAppleIAPItemParams) WithHTTPClient(client *http.Client) *V2PublicFulfillAppleIAPItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the v2 public fulfill apple iap item params
func (o *V2PublicFulfillAppleIAPItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the v2 public fulfill apple iap item params
func (o *V2PublicFulfillAppleIAPItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *V2PublicFulfillAppleIAPItemParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the v2 public fulfill apple iap item params
func (o *V2PublicFulfillAppleIAPItemParams) WithBody(body *platformclientmodels.AppleIAPRequest) *V2PublicFulfillAppleIAPItemParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the v2 public fulfill apple iap item params
func (o *V2PublicFulfillAppleIAPItemParams) SetBody(body *platformclientmodels.AppleIAPRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the v2 public fulfill apple iap item params
func (o *V2PublicFulfillAppleIAPItemParams) WithNamespace(namespace string) *V2PublicFulfillAppleIAPItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the v2 public fulfill apple iap item params
func (o *V2PublicFulfillAppleIAPItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the v2 public fulfill apple iap item params
func (o *V2PublicFulfillAppleIAPItemParams) WithUserID(userID string) *V2PublicFulfillAppleIAPItemParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the v2 public fulfill apple iap item params
func (o *V2PublicFulfillAppleIAPItemParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *V2PublicFulfillAppleIAPItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
