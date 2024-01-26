// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package season

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

// NewPublicGetCurrentUserSeasonParams creates a new PublicGetCurrentUserSeasonParams object
// with the default values initialized.
func NewPublicGetCurrentUserSeasonParams() *PublicGetCurrentUserSeasonParams {
	var ()
	return &PublicGetCurrentUserSeasonParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetCurrentUserSeasonParamsWithTimeout creates a new PublicGetCurrentUserSeasonParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetCurrentUserSeasonParamsWithTimeout(timeout time.Duration) *PublicGetCurrentUserSeasonParams {
	var ()
	return &PublicGetCurrentUserSeasonParams{

		timeout: timeout,
	}
}

// NewPublicGetCurrentUserSeasonParamsWithContext creates a new PublicGetCurrentUserSeasonParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetCurrentUserSeasonParamsWithContext(ctx context.Context) *PublicGetCurrentUserSeasonParams {
	var ()
	return &PublicGetCurrentUserSeasonParams{

		Context: ctx,
	}
}

// NewPublicGetCurrentUserSeasonParamsWithHTTPClient creates a new PublicGetCurrentUserSeasonParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetCurrentUserSeasonParamsWithHTTPClient(client *http.Client) *PublicGetCurrentUserSeasonParams {
	var ()
	return &PublicGetCurrentUserSeasonParams{
		HTTPClient: client,
	}
}

/*PublicGetCurrentUserSeasonParams contains all the parameters to send to the API endpoint
for the public get current user season operation typically these are written to a http.Request
*/
type PublicGetCurrentUserSeasonParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
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

// WithTimeout adds the timeout to the public get current user season params
func (o *PublicGetCurrentUserSeasonParams) WithTimeout(timeout time.Duration) *PublicGetCurrentUserSeasonParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get current user season params
func (o *PublicGetCurrentUserSeasonParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get current user season params
func (o *PublicGetCurrentUserSeasonParams) WithContext(ctx context.Context) *PublicGetCurrentUserSeasonParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get current user season params
func (o *PublicGetCurrentUserSeasonParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get current user season params
func (o *PublicGetCurrentUserSeasonParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get current user season params
func (o *PublicGetCurrentUserSeasonParams) WithHTTPClient(client *http.Client) *PublicGetCurrentUserSeasonParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get current user season params
func (o *PublicGetCurrentUserSeasonParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get current user season params
func (o *PublicGetCurrentUserSeasonParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetCurrentUserSeasonParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get current user season params
func (o *PublicGetCurrentUserSeasonParams) WithNamespace(namespace string) *PublicGetCurrentUserSeasonParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get current user season params
func (o *PublicGetCurrentUserSeasonParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get current user season params
func (o *PublicGetCurrentUserSeasonParams) WithUserID(userID string) *PublicGetCurrentUserSeasonParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get current user season params
func (o *PublicGetCurrentUserSeasonParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetCurrentUserSeasonParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
