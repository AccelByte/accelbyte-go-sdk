// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// NewGetUserBanHistoryParams creates a new GetUserBanHistoryParams object
// with the default values initialized.
func NewGetUserBanHistoryParams() *GetUserBanHistoryParams {
	var ()
	return &GetUserBanHistoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserBanHistoryParamsWithTimeout creates a new GetUserBanHistoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserBanHistoryParamsWithTimeout(timeout time.Duration) *GetUserBanHistoryParams {
	var ()
	return &GetUserBanHistoryParams{

		timeout: timeout,
	}
}

// NewGetUserBanHistoryParamsWithContext creates a new GetUserBanHistoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserBanHistoryParamsWithContext(ctx context.Context) *GetUserBanHistoryParams {
	var ()
	return &GetUserBanHistoryParams{

		Context: ctx,
	}
}

// NewGetUserBanHistoryParamsWithHTTPClient creates a new GetUserBanHistoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserBanHistoryParamsWithHTTPClient(client *http.Client) *GetUserBanHistoryParams {
	var ()
	return &GetUserBanHistoryParams{
		HTTPClient: client,
	}
}

/*GetUserBanHistoryParams contains all the parameters to send to the API endpoint
for the get user ban history operation typically these are written to a http.Request
*/
type GetUserBanHistoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

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

// WithTimeout adds the timeout to the get user ban history params
func (o *GetUserBanHistoryParams) WithTimeout(timeout time.Duration) *GetUserBanHistoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user ban history params
func (o *GetUserBanHistoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user ban history params
func (o *GetUserBanHistoryParams) WithContext(ctx context.Context) *GetUserBanHistoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user ban history params
func (o *GetUserBanHistoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user ban history params
func (o *GetUserBanHistoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user ban history params
func (o *GetUserBanHistoryParams) WithHTTPClient(client *http.Client) *GetUserBanHistoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user ban history params
func (o *GetUserBanHistoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user ban history params
func (o *GetUserBanHistoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserBanHistoryParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user ban history params
func (o *GetUserBanHistoryParams) WithNamespace(namespace string) *GetUserBanHistoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user ban history params
func (o *GetUserBanHistoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user ban history params
func (o *GetUserBanHistoryParams) WithUserID(userID string) *GetUserBanHistoryParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user ban history params
func (o *GetUserBanHistoryParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserBanHistoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
