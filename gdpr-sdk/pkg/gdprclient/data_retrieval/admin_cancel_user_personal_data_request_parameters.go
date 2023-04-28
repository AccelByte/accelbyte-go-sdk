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
)

// NewAdminCancelUserPersonalDataRequestParams creates a new AdminCancelUserPersonalDataRequestParams object
// with the default values initialized.
func NewAdminCancelUserPersonalDataRequestParams() *AdminCancelUserPersonalDataRequestParams {
	var ()
	return &AdminCancelUserPersonalDataRequestParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCancelUserPersonalDataRequestParamsWithTimeout creates a new AdminCancelUserPersonalDataRequestParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCancelUserPersonalDataRequestParamsWithTimeout(timeout time.Duration) *AdminCancelUserPersonalDataRequestParams {
	var ()
	return &AdminCancelUserPersonalDataRequestParams{

		timeout: timeout,
	}
}

// NewAdminCancelUserPersonalDataRequestParamsWithContext creates a new AdminCancelUserPersonalDataRequestParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCancelUserPersonalDataRequestParamsWithContext(ctx context.Context) *AdminCancelUserPersonalDataRequestParams {
	var ()
	return &AdminCancelUserPersonalDataRequestParams{

		Context: ctx,
	}
}

// NewAdminCancelUserPersonalDataRequestParamsWithHTTPClient creates a new AdminCancelUserPersonalDataRequestParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCancelUserPersonalDataRequestParamsWithHTTPClient(client *http.Client) *AdminCancelUserPersonalDataRequestParams {
	var ()
	return &AdminCancelUserPersonalDataRequestParams{
		HTTPClient: client,
	}
}

/*AdminCancelUserPersonalDataRequestParams contains all the parameters to send to the API endpoint
for the admin cancel user personal data request operation typically these are written to a http.Request
*/
type AdminCancelUserPersonalDataRequestParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the user

	*/
	Namespace string
	/*RequestDate
	  Request date in RFC3339 format

	*/
	RequestDate string
	/*UserID
	  IAM id of the user

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin cancel user personal data request params
func (o *AdminCancelUserPersonalDataRequestParams) WithTimeout(timeout time.Duration) *AdminCancelUserPersonalDataRequestParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin cancel user personal data request params
func (o *AdminCancelUserPersonalDataRequestParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin cancel user personal data request params
func (o *AdminCancelUserPersonalDataRequestParams) WithContext(ctx context.Context) *AdminCancelUserPersonalDataRequestParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin cancel user personal data request params
func (o *AdminCancelUserPersonalDataRequestParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin cancel user personal data request params
func (o *AdminCancelUserPersonalDataRequestParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin cancel user personal data request params
func (o *AdminCancelUserPersonalDataRequestParams) WithHTTPClient(client *http.Client) *AdminCancelUserPersonalDataRequestParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin cancel user personal data request params
func (o *AdminCancelUserPersonalDataRequestParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin cancel user personal data request params
func (o *AdminCancelUserPersonalDataRequestParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin cancel user personal data request params
func (o *AdminCancelUserPersonalDataRequestParams) WithNamespace(namespace string) *AdminCancelUserPersonalDataRequestParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin cancel user personal data request params
func (o *AdminCancelUserPersonalDataRequestParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRequestDate adds the requestDate to the admin cancel user personal data request params
func (o *AdminCancelUserPersonalDataRequestParams) WithRequestDate(requestDate string) *AdminCancelUserPersonalDataRequestParams {
	o.SetRequestDate(requestDate)
	return o
}

// SetRequestDate adds the requestDate to the admin cancel user personal data request params
func (o *AdminCancelUserPersonalDataRequestParams) SetRequestDate(requestDate string) {
	o.RequestDate = requestDate
}

// WithUserID adds the userID to the admin cancel user personal data request params
func (o *AdminCancelUserPersonalDataRequestParams) WithUserID(userID string) *AdminCancelUserPersonalDataRequestParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin cancel user personal data request params
func (o *AdminCancelUserPersonalDataRequestParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCancelUserPersonalDataRequestParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param requestDate
	if err := r.SetPathParam("requestDate", o.RequestDate); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
