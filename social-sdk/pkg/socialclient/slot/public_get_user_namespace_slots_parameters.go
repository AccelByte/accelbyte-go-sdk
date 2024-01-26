// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package slot

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

// NewPublicGetUserNamespaceSlotsParams creates a new PublicGetUserNamespaceSlotsParams object
// with the default values initialized.
func NewPublicGetUserNamespaceSlotsParams() *PublicGetUserNamespaceSlotsParams {
	var ()
	return &PublicGetUserNamespaceSlotsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserNamespaceSlotsParamsWithTimeout creates a new PublicGetUserNamespaceSlotsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserNamespaceSlotsParamsWithTimeout(timeout time.Duration) *PublicGetUserNamespaceSlotsParams {
	var ()
	return &PublicGetUserNamespaceSlotsParams{

		timeout: timeout,
	}
}

// NewPublicGetUserNamespaceSlotsParamsWithContext creates a new PublicGetUserNamespaceSlotsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserNamespaceSlotsParamsWithContext(ctx context.Context) *PublicGetUserNamespaceSlotsParams {
	var ()
	return &PublicGetUserNamespaceSlotsParams{

		Context: ctx,
	}
}

// NewPublicGetUserNamespaceSlotsParamsWithHTTPClient creates a new PublicGetUserNamespaceSlotsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserNamespaceSlotsParamsWithHTTPClient(client *http.Client) *PublicGetUserNamespaceSlotsParams {
	var ()
	return &PublicGetUserNamespaceSlotsParams{
		HTTPClient: client,
	}
}

/*PublicGetUserNamespaceSlotsParams contains all the parameters to send to the API endpoint
for the public get user namespace slots operation typically these are written to a http.Request
*/
type PublicGetUserNamespaceSlotsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace ID

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get user namespace slots params
func (o *PublicGetUserNamespaceSlotsParams) WithTimeout(timeout time.Duration) *PublicGetUserNamespaceSlotsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user namespace slots params
func (o *PublicGetUserNamespaceSlotsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user namespace slots params
func (o *PublicGetUserNamespaceSlotsParams) WithContext(ctx context.Context) *PublicGetUserNamespaceSlotsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user namespace slots params
func (o *PublicGetUserNamespaceSlotsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user namespace slots params
func (o *PublicGetUserNamespaceSlotsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user namespace slots params
func (o *PublicGetUserNamespaceSlotsParams) WithHTTPClient(client *http.Client) *PublicGetUserNamespaceSlotsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user namespace slots params
func (o *PublicGetUserNamespaceSlotsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user namespace slots params
func (o *PublicGetUserNamespaceSlotsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetUserNamespaceSlotsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get user namespace slots params
func (o *PublicGetUserNamespaceSlotsParams) WithNamespace(namespace string) *PublicGetUserNamespaceSlotsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user namespace slots params
func (o *PublicGetUserNamespaceSlotsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get user namespace slots params
func (o *PublicGetUserNamespaceSlotsParams) WithUserID(userID string) *PublicGetUserNamespaceSlotsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get user namespace slots params
func (o *PublicGetUserNamespaceSlotsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserNamespaceSlotsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
