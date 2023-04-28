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

// NewQueryUserExpGrantHistoryTagParams creates a new QueryUserExpGrantHistoryTagParams object
// with the default values initialized.
func NewQueryUserExpGrantHistoryTagParams() *QueryUserExpGrantHistoryTagParams {
	var ()
	return &QueryUserExpGrantHistoryTagParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryUserExpGrantHistoryTagParamsWithTimeout creates a new QueryUserExpGrantHistoryTagParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryUserExpGrantHistoryTagParamsWithTimeout(timeout time.Duration) *QueryUserExpGrantHistoryTagParams {
	var ()
	return &QueryUserExpGrantHistoryTagParams{

		timeout: timeout,
	}
}

// NewQueryUserExpGrantHistoryTagParamsWithContext creates a new QueryUserExpGrantHistoryTagParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryUserExpGrantHistoryTagParamsWithContext(ctx context.Context) *QueryUserExpGrantHistoryTagParams {
	var ()
	return &QueryUserExpGrantHistoryTagParams{

		Context: ctx,
	}
}

// NewQueryUserExpGrantHistoryTagParamsWithHTTPClient creates a new QueryUserExpGrantHistoryTagParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryUserExpGrantHistoryTagParamsWithHTTPClient(client *http.Client) *QueryUserExpGrantHistoryTagParams {
	var ()
	return &QueryUserExpGrantHistoryTagParams{
		HTTPClient: client,
	}
}

/*QueryUserExpGrantHistoryTagParams contains all the parameters to send to the API endpoint
for the query user exp grant history tag operation typically these are written to a http.Request
*/
type QueryUserExpGrantHistoryTagParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID*/
	UserID string
	/*SeasonID
	  if not provide, will query current season

	*/
	SeasonID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the query user exp grant history tag params
func (o *QueryUserExpGrantHistoryTagParams) WithTimeout(timeout time.Duration) *QueryUserExpGrantHistoryTagParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query user exp grant history tag params
func (o *QueryUserExpGrantHistoryTagParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query user exp grant history tag params
func (o *QueryUserExpGrantHistoryTagParams) WithContext(ctx context.Context) *QueryUserExpGrantHistoryTagParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query user exp grant history tag params
func (o *QueryUserExpGrantHistoryTagParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query user exp grant history tag params
func (o *QueryUserExpGrantHistoryTagParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query user exp grant history tag params
func (o *QueryUserExpGrantHistoryTagParams) WithHTTPClient(client *http.Client) *QueryUserExpGrantHistoryTagParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query user exp grant history tag params
func (o *QueryUserExpGrantHistoryTagParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query user exp grant history tag params
func (o *QueryUserExpGrantHistoryTagParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the query user exp grant history tag params
func (o *QueryUserExpGrantHistoryTagParams) WithNamespace(namespace string) *QueryUserExpGrantHistoryTagParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query user exp grant history tag params
func (o *QueryUserExpGrantHistoryTagParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the query user exp grant history tag params
func (o *QueryUserExpGrantHistoryTagParams) WithUserID(userID string) *QueryUserExpGrantHistoryTagParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the query user exp grant history tag params
func (o *QueryUserExpGrantHistoryTagParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithSeasonID adds the seasonID to the query user exp grant history tag params
func (o *QueryUserExpGrantHistoryTagParams) WithSeasonID(seasonID *string) *QueryUserExpGrantHistoryTagParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the query user exp grant history tag params
func (o *QueryUserExpGrantHistoryTagParams) SetSeasonID(seasonID *string) {
	o.SeasonID = seasonID
}

// WriteToRequest writes these params to a swagger request
func (o *QueryUserExpGrantHistoryTagParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.SeasonID != nil {

		// query param seasonId
		var qrSeasonID string
		if o.SeasonID != nil {
			qrSeasonID = *o.SeasonID
		}
		qSeasonID := qrSeasonID
		if qSeasonID != "" {
			if err := r.SetQueryParam("seasonId", qSeasonID); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
