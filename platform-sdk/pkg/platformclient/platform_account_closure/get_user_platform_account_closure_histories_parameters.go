// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platform_account_closure

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

// NewGetUserPlatformAccountClosureHistoriesParams creates a new GetUserPlatformAccountClosureHistoriesParams object
// with the default values initialized.
func NewGetUserPlatformAccountClosureHistoriesParams() *GetUserPlatformAccountClosureHistoriesParams {
	var ()
	return &GetUserPlatformAccountClosureHistoriesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserPlatformAccountClosureHistoriesParamsWithTimeout creates a new GetUserPlatformAccountClosureHistoriesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserPlatformAccountClosureHistoriesParamsWithTimeout(timeout time.Duration) *GetUserPlatformAccountClosureHistoriesParams {
	var ()
	return &GetUserPlatformAccountClosureHistoriesParams{

		timeout: timeout,
	}
}

// NewGetUserPlatformAccountClosureHistoriesParamsWithContext creates a new GetUserPlatformAccountClosureHistoriesParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserPlatformAccountClosureHistoriesParamsWithContext(ctx context.Context) *GetUserPlatformAccountClosureHistoriesParams {
	var ()
	return &GetUserPlatformAccountClosureHistoriesParams{

		Context: ctx,
	}
}

// NewGetUserPlatformAccountClosureHistoriesParamsWithHTTPClient creates a new GetUserPlatformAccountClosureHistoriesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserPlatformAccountClosureHistoriesParamsWithHTTPClient(client *http.Client) *GetUserPlatformAccountClosureHistoriesParams {
	var ()
	return &GetUserPlatformAccountClosureHistoriesParams{
		HTTPClient: client,
	}
}

/*GetUserPlatformAccountClosureHistoriesParams contains all the parameters to send to the API endpoint
for the get user platform account closure histories operation typically these are written to a http.Request
*/
type GetUserPlatformAccountClosureHistoriesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the get user platform account closure histories params
func (o *GetUserPlatformAccountClosureHistoriesParams) WithTimeout(timeout time.Duration) *GetUserPlatformAccountClosureHistoriesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user platform account closure histories params
func (o *GetUserPlatformAccountClosureHistoriesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user platform account closure histories params
func (o *GetUserPlatformAccountClosureHistoriesParams) WithContext(ctx context.Context) *GetUserPlatformAccountClosureHistoriesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user platform account closure histories params
func (o *GetUserPlatformAccountClosureHistoriesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user platform account closure histories params
func (o *GetUserPlatformAccountClosureHistoriesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user platform account closure histories params
func (o *GetUserPlatformAccountClosureHistoriesParams) WithHTTPClient(client *http.Client) *GetUserPlatformAccountClosureHistoriesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user platform account closure histories params
func (o *GetUserPlatformAccountClosureHistoriesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user platform account closure histories params
func (o *GetUserPlatformAccountClosureHistoriesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserPlatformAccountClosureHistoriesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user platform account closure histories params
func (o *GetUserPlatformAccountClosureHistoriesParams) WithNamespace(namespace string) *GetUserPlatformAccountClosureHistoriesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user platform account closure histories params
func (o *GetUserPlatformAccountClosureHistoriesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user platform account closure histories params
func (o *GetUserPlatformAccountClosureHistoriesParams) WithUserID(userID string) *GetUserPlatformAccountClosureHistoriesParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user platform account closure histories params
func (o *GetUserPlatformAccountClosureHistoriesParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserPlatformAccountClosureHistoriesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
