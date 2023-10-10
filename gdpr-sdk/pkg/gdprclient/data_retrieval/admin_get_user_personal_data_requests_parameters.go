// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_retrieval

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

// NewAdminGetUserPersonalDataRequestsParams creates a new AdminGetUserPersonalDataRequestsParams object
// with the default values initialized.
func NewAdminGetUserPersonalDataRequestsParams() *AdminGetUserPersonalDataRequestsParams {
	var ()
	return &AdminGetUserPersonalDataRequestsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetUserPersonalDataRequestsParamsWithTimeout creates a new AdminGetUserPersonalDataRequestsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetUserPersonalDataRequestsParamsWithTimeout(timeout time.Duration) *AdminGetUserPersonalDataRequestsParams {
	var ()
	return &AdminGetUserPersonalDataRequestsParams{

		timeout: timeout,
	}
}

// NewAdminGetUserPersonalDataRequestsParamsWithContext creates a new AdminGetUserPersonalDataRequestsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetUserPersonalDataRequestsParamsWithContext(ctx context.Context) *AdminGetUserPersonalDataRequestsParams {
	var ()
	return &AdminGetUserPersonalDataRequestsParams{

		Context: ctx,
	}
}

// NewAdminGetUserPersonalDataRequestsParamsWithHTTPClient creates a new AdminGetUserPersonalDataRequestsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetUserPersonalDataRequestsParamsWithHTTPClient(client *http.Client) *AdminGetUserPersonalDataRequestsParams {
	var ()
	return &AdminGetUserPersonalDataRequestsParams{
		HTTPClient: client,
	}
}

/*AdminGetUserPersonalDataRequestsParams contains all the parameters to send to the API endpoint
for the admin get user personal data requests operation typically these are written to a http.Request
*/
type AdminGetUserPersonalDataRequestsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  IAM id of the user

	*/
	UserID string
	/*Limit
	  the maximum number of data that may be returned (1...100)

	*/
	Limit *int64
	/*Offset
	  The start position that points to query data

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get user personal data requests params
func (o *AdminGetUserPersonalDataRequestsParams) WithTimeout(timeout time.Duration) *AdminGetUserPersonalDataRequestsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get user personal data requests params
func (o *AdminGetUserPersonalDataRequestsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get user personal data requests params
func (o *AdminGetUserPersonalDataRequestsParams) WithContext(ctx context.Context) *AdminGetUserPersonalDataRequestsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get user personal data requests params
func (o *AdminGetUserPersonalDataRequestsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get user personal data requests params
func (o *AdminGetUserPersonalDataRequestsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get user personal data requests params
func (o *AdminGetUserPersonalDataRequestsParams) WithHTTPClient(client *http.Client) *AdminGetUserPersonalDataRequestsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get user personal data requests params
func (o *AdminGetUserPersonalDataRequestsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get user personal data requests params
func (o *AdminGetUserPersonalDataRequestsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin get user personal data requests params
func (o *AdminGetUserPersonalDataRequestsParams) WithNamespace(namespace string) *AdminGetUserPersonalDataRequestsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get user personal data requests params
func (o *AdminGetUserPersonalDataRequestsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get user personal data requests params
func (o *AdminGetUserPersonalDataRequestsParams) WithUserID(userID string) *AdminGetUserPersonalDataRequestsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get user personal data requests params
func (o *AdminGetUserPersonalDataRequestsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the admin get user personal data requests params
func (o *AdminGetUserPersonalDataRequestsParams) WithLimit(limit *int64) *AdminGetUserPersonalDataRequestsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get user personal data requests params
func (o *AdminGetUserPersonalDataRequestsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin get user personal data requests params
func (o *AdminGetUserPersonalDataRequestsParams) WithOffset(offset *int64) *AdminGetUserPersonalDataRequestsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get user personal data requests params
func (o *AdminGetUserPersonalDataRequestsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetUserPersonalDataRequestsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

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
