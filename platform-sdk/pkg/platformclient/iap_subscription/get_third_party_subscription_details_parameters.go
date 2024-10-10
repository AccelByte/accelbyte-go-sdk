// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap_subscription

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

// NewGetThirdPartySubscriptionDetailsParams creates a new GetThirdPartySubscriptionDetailsParams object
// with the default values initialized.
func NewGetThirdPartySubscriptionDetailsParams() *GetThirdPartySubscriptionDetailsParams {
	var ()
	return &GetThirdPartySubscriptionDetailsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetThirdPartySubscriptionDetailsParamsWithTimeout creates a new GetThirdPartySubscriptionDetailsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetThirdPartySubscriptionDetailsParamsWithTimeout(timeout time.Duration) *GetThirdPartySubscriptionDetailsParams {
	var ()
	return &GetThirdPartySubscriptionDetailsParams{

		timeout: timeout,
	}
}

// NewGetThirdPartySubscriptionDetailsParamsWithContext creates a new GetThirdPartySubscriptionDetailsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetThirdPartySubscriptionDetailsParamsWithContext(ctx context.Context) *GetThirdPartySubscriptionDetailsParams {
	var ()
	return &GetThirdPartySubscriptionDetailsParams{

		Context: ctx,
	}
}

// NewGetThirdPartySubscriptionDetailsParamsWithHTTPClient creates a new GetThirdPartySubscriptionDetailsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetThirdPartySubscriptionDetailsParamsWithHTTPClient(client *http.Client) *GetThirdPartySubscriptionDetailsParams {
	var ()
	return &GetThirdPartySubscriptionDetailsParams{
		HTTPClient: client,
	}
}

/*GetThirdPartySubscriptionDetailsParams contains all the parameters to send to the API endpoint
for the get third party subscription details operation typically these are written to a http.Request
*/
type GetThirdPartySubscriptionDetailsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ID*/
	ID string
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

// WithTimeout adds the timeout to the get third party subscription details params
func (o *GetThirdPartySubscriptionDetailsParams) WithTimeout(timeout time.Duration) *GetThirdPartySubscriptionDetailsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get third party subscription details params
func (o *GetThirdPartySubscriptionDetailsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get third party subscription details params
func (o *GetThirdPartySubscriptionDetailsParams) WithContext(ctx context.Context) *GetThirdPartySubscriptionDetailsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get third party subscription details params
func (o *GetThirdPartySubscriptionDetailsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get third party subscription details params
func (o *GetThirdPartySubscriptionDetailsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get third party subscription details params
func (o *GetThirdPartySubscriptionDetailsParams) WithHTTPClient(client *http.Client) *GetThirdPartySubscriptionDetailsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get third party subscription details params
func (o *GetThirdPartySubscriptionDetailsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get third party subscription details params
func (o *GetThirdPartySubscriptionDetailsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetThirdPartySubscriptionDetailsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithID adds the idVar to the get third party subscription details params
func (o *GetThirdPartySubscriptionDetailsParams) WithID(idVar string) *GetThirdPartySubscriptionDetailsParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the get third party subscription details params
func (o *GetThirdPartySubscriptionDetailsParams) SetID(idVar string) {
	o.ID = idVar
}

// WithNamespace adds the namespace to the get third party subscription details params
func (o *GetThirdPartySubscriptionDetailsParams) WithNamespace(namespace string) *GetThirdPartySubscriptionDetailsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get third party subscription details params
func (o *GetThirdPartySubscriptionDetailsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get third party subscription details params
func (o *GetThirdPartySubscriptionDetailsParams) WithUserID(userID string) *GetThirdPartySubscriptionDetailsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get third party subscription details params
func (o *GetThirdPartySubscriptionDetailsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetThirdPartySubscriptionDetailsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param id
	if err := r.SetPathParam("id", o.ID); err != nil {
		return err
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
