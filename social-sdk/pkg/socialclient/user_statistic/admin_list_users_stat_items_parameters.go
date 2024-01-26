// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic

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

// NewAdminListUsersStatItemsParams creates a new AdminListUsersStatItemsParams object
// with the default values initialized.
func NewAdminListUsersStatItemsParams() *AdminListUsersStatItemsParams {
	var ()
	return &AdminListUsersStatItemsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListUsersStatItemsParamsWithTimeout creates a new AdminListUsersStatItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListUsersStatItemsParamsWithTimeout(timeout time.Duration) *AdminListUsersStatItemsParams {
	var ()
	return &AdminListUsersStatItemsParams{

		timeout: timeout,
	}
}

// NewAdminListUsersStatItemsParamsWithContext creates a new AdminListUsersStatItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListUsersStatItemsParamsWithContext(ctx context.Context) *AdminListUsersStatItemsParams {
	var ()
	return &AdminListUsersStatItemsParams{

		Context: ctx,
	}
}

// NewAdminListUsersStatItemsParamsWithHTTPClient creates a new AdminListUsersStatItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListUsersStatItemsParamsWithHTTPClient(client *http.Client) *AdminListUsersStatItemsParams {
	var ()
	return &AdminListUsersStatItemsParams{
		HTTPClient: client,
	}
}

/*AdminListUsersStatItemsParams contains all the parameters to send to the API endpoint
for the admin list users stat items operation typically these are written to a http.Request
*/
type AdminListUsersStatItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  user id

	*/
	UserID string
	/*AdditionalKey
	  additional key

	*/
	AdditionalKey *string
	/*StatCodes
	  stat codes

	*/
	StatCodes []string
	/*Tags
	  tags

	*/
	Tags []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin list users stat items params
func (o *AdminListUsersStatItemsParams) WithTimeout(timeout time.Duration) *AdminListUsersStatItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list users stat items params
func (o *AdminListUsersStatItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list users stat items params
func (o *AdminListUsersStatItemsParams) WithContext(ctx context.Context) *AdminListUsersStatItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list users stat items params
func (o *AdminListUsersStatItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list users stat items params
func (o *AdminListUsersStatItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list users stat items params
func (o *AdminListUsersStatItemsParams) WithHTTPClient(client *http.Client) *AdminListUsersStatItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list users stat items params
func (o *AdminListUsersStatItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list users stat items params
func (o *AdminListUsersStatItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminListUsersStatItemsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin list users stat items params
func (o *AdminListUsersStatItemsParams) WithNamespace(namespace string) *AdminListUsersStatItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list users stat items params
func (o *AdminListUsersStatItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin list users stat items params
func (o *AdminListUsersStatItemsParams) WithUserID(userID string) *AdminListUsersStatItemsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin list users stat items params
func (o *AdminListUsersStatItemsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithAdditionalKey adds the additionalKey to the admin list users stat items params
func (o *AdminListUsersStatItemsParams) WithAdditionalKey(additionalKey *string) *AdminListUsersStatItemsParams {
	o.SetAdditionalKey(additionalKey)
	return o
}

// SetAdditionalKey adds the additionalKey to the admin list users stat items params
func (o *AdminListUsersStatItemsParams) SetAdditionalKey(additionalKey *string) {
	o.AdditionalKey = additionalKey
}

// WithStatCodes adds the statCodes to the admin list users stat items params
func (o *AdminListUsersStatItemsParams) WithStatCodes(statCodes []string) *AdminListUsersStatItemsParams {
	o.SetStatCodes(statCodes)
	return o
}

// SetStatCodes adds the statCodes to the admin list users stat items params
func (o *AdminListUsersStatItemsParams) SetStatCodes(statCodes []string) {
	o.StatCodes = statCodes
}

// WithTags adds the tags to the admin list users stat items params
func (o *AdminListUsersStatItemsParams) WithTags(tags []string) *AdminListUsersStatItemsParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the admin list users stat items params
func (o *AdminListUsersStatItemsParams) SetTags(tags []string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListUsersStatItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.AdditionalKey != nil {

		// query param additionalKey
		var qrAdditionalKey string
		if o.AdditionalKey != nil {
			qrAdditionalKey = *o.AdditionalKey
		}
		qAdditionalKey := qrAdditionalKey
		if qAdditionalKey != "" {
			if err := r.SetQueryParam("additionalKey", qAdditionalKey); err != nil {
				return err
			}
		}

	}

	valuesStatCodes := o.StatCodes

	joinedStatCodes := swag.JoinByFormat(valuesStatCodes, "multi")
	// query array param statCodes
	if err := r.SetQueryParam("statCodes", joinedStatCodes...); err != nil {
		return err
	}

	valuesTags := o.Tags

	joinedTags := swag.JoinByFormat(valuesTags, "multi")
	// query array param tags
	if err := r.SetQueryParam("tags", joinedTags...); err != nil {
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
