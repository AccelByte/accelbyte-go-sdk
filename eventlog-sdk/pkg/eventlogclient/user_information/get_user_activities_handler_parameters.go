// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_information

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewGetUserActivitiesHandlerParams creates a new GetUserActivitiesHandlerParams object
// with the default values initialized.
func NewGetUserActivitiesHandlerParams() *GetUserActivitiesHandlerParams {
	var ()
	return &GetUserActivitiesHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserActivitiesHandlerParamsWithTimeout creates a new GetUserActivitiesHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserActivitiesHandlerParamsWithTimeout(timeout time.Duration) *GetUserActivitiesHandlerParams {
	var ()
	return &GetUserActivitiesHandlerParams{

		timeout: timeout,
	}
}

// NewGetUserActivitiesHandlerParamsWithContext creates a new GetUserActivitiesHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserActivitiesHandlerParamsWithContext(ctx context.Context) *GetUserActivitiesHandlerParams {
	var ()
	return &GetUserActivitiesHandlerParams{

		Context: ctx,
	}
}

// NewGetUserActivitiesHandlerParamsWithHTTPClient creates a new GetUserActivitiesHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserActivitiesHandlerParamsWithHTTPClient(client *http.Client) *GetUserActivitiesHandlerParams {
	var ()
	return &GetUserActivitiesHandlerParams{
		HTTPClient: client,
	}
}

/*GetUserActivitiesHandlerParams contains all the parameters to send to the API endpoint
for the get user activities handler operation typically these are written to a http.Request
*/
type GetUserActivitiesHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string
	/*Offset
	  Offset to query

	*/
	Offset *int64
	/*PageSize
	  Number of result in a page

	*/
	PageSize int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user activities handler params
func (o *GetUserActivitiesHandlerParams) WithTimeout(timeout time.Duration) *GetUserActivitiesHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user activities handler params
func (o *GetUserActivitiesHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user activities handler params
func (o *GetUserActivitiesHandlerParams) WithContext(ctx context.Context) *GetUserActivitiesHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user activities handler params
func (o *GetUserActivitiesHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user activities handler params
func (o *GetUserActivitiesHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user activities handler params
func (o *GetUserActivitiesHandlerParams) WithHTTPClient(client *http.Client) *GetUserActivitiesHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user activities handler params
func (o *GetUserActivitiesHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user activities handler params
func (o *GetUserActivitiesHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserActivitiesHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user activities handler params
func (o *GetUserActivitiesHandlerParams) WithNamespace(namespace string) *GetUserActivitiesHandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user activities handler params
func (o *GetUserActivitiesHandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user activities handler params
func (o *GetUserActivitiesHandlerParams) WithUserID(userID string) *GetUserActivitiesHandlerParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user activities handler params
func (o *GetUserActivitiesHandlerParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithOffset adds the offset to the get user activities handler params
func (o *GetUserActivitiesHandlerParams) WithOffset(offset *int64) *GetUserActivitiesHandlerParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get user activities handler params
func (o *GetUserActivitiesHandlerParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithPageSize adds the pageSize to the get user activities handler params
func (o *GetUserActivitiesHandlerParams) WithPageSize(pageSize int64) *GetUserActivitiesHandlerParams {
	o.SetPageSize(pageSize)
	return o
}

// SetPageSize adds the pageSize to the get user activities handler params
func (o *GetUserActivitiesHandlerParams) SetPageSize(pageSize int64) {
	o.PageSize = pageSize
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserActivitiesHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	// query param pageSize
	qrPageSize := o.PageSize
	qPageSize := swag.FormatInt64(qrPageSize)
	if qPageSize != "" {
		if err := r.SetQueryParam("pageSize", qPageSize); err != nil {
			return err
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
