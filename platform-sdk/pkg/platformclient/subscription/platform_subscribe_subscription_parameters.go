// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package subscription

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

// NewPlatformSubscribeSubscriptionParams creates a new PlatformSubscribeSubscriptionParams object
// with the default values initialized.
func NewPlatformSubscribeSubscriptionParams() *PlatformSubscribeSubscriptionParams {
	var ()
	return &PlatformSubscribeSubscriptionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPlatformSubscribeSubscriptionParamsWithTimeout creates a new PlatformSubscribeSubscriptionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPlatformSubscribeSubscriptionParamsWithTimeout(timeout time.Duration) *PlatformSubscribeSubscriptionParams {
	var ()
	return &PlatformSubscribeSubscriptionParams{

		timeout: timeout,
	}
}

// NewPlatformSubscribeSubscriptionParamsWithContext creates a new PlatformSubscribeSubscriptionParams object
// with the default values initialized, and the ability to set a context for a request
func NewPlatformSubscribeSubscriptionParamsWithContext(ctx context.Context) *PlatformSubscribeSubscriptionParams {
	var ()
	return &PlatformSubscribeSubscriptionParams{

		Context: ctx,
	}
}

// NewPlatformSubscribeSubscriptionParamsWithHTTPClient creates a new PlatformSubscribeSubscriptionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPlatformSubscribeSubscriptionParamsWithHTTPClient(client *http.Client) *PlatformSubscribeSubscriptionParams {
	var ()
	return &PlatformSubscribeSubscriptionParams{
		HTTPClient: client,
	}
}

/*PlatformSubscribeSubscriptionParams contains all the parameters to send to the API endpoint
for the platform subscribe subscription operation typically these are written to a http.Request
*/
type PlatformSubscribeSubscriptionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.PlatformSubscribeRequest
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

// WithTimeout adds the timeout to the platform subscribe subscription params
func (o *PlatformSubscribeSubscriptionParams) WithTimeout(timeout time.Duration) *PlatformSubscribeSubscriptionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the platform subscribe subscription params
func (o *PlatformSubscribeSubscriptionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the platform subscribe subscription params
func (o *PlatformSubscribeSubscriptionParams) WithContext(ctx context.Context) *PlatformSubscribeSubscriptionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the platform subscribe subscription params
func (o *PlatformSubscribeSubscriptionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the platform subscribe subscription params
func (o *PlatformSubscribeSubscriptionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the platform subscribe subscription params
func (o *PlatformSubscribeSubscriptionParams) WithHTTPClient(client *http.Client) *PlatformSubscribeSubscriptionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the platform subscribe subscription params
func (o *PlatformSubscribeSubscriptionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the platform subscribe subscription params
func (o *PlatformSubscribeSubscriptionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PlatformSubscribeSubscriptionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the platform subscribe subscription params
func (o *PlatformSubscribeSubscriptionParams) WithBody(body *platformclientmodels.PlatformSubscribeRequest) *PlatformSubscribeSubscriptionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the platform subscribe subscription params
func (o *PlatformSubscribeSubscriptionParams) SetBody(body *platformclientmodels.PlatformSubscribeRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the platform subscribe subscription params
func (o *PlatformSubscribeSubscriptionParams) WithNamespace(namespace string) *PlatformSubscribeSubscriptionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the platform subscribe subscription params
func (o *PlatformSubscribeSubscriptionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the platform subscribe subscription params
func (o *PlatformSubscribeSubscriptionParams) WithUserID(userID string) *PlatformSubscribeSubscriptionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the platform subscribe subscription params
func (o *PlatformSubscribeSubscriptionParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PlatformSubscribeSubscriptionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
