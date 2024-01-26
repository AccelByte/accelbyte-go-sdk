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

// NewAdminGeneratePersonalDataURLParams creates a new AdminGeneratePersonalDataURLParams object
// with the default values initialized.
func NewAdminGeneratePersonalDataURLParams() *AdminGeneratePersonalDataURLParams {
	var ()
	return &AdminGeneratePersonalDataURLParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGeneratePersonalDataURLParamsWithTimeout creates a new AdminGeneratePersonalDataURLParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGeneratePersonalDataURLParamsWithTimeout(timeout time.Duration) *AdminGeneratePersonalDataURLParams {
	var ()
	return &AdminGeneratePersonalDataURLParams{

		timeout: timeout,
	}
}

// NewAdminGeneratePersonalDataURLParamsWithContext creates a new AdminGeneratePersonalDataURLParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGeneratePersonalDataURLParamsWithContext(ctx context.Context) *AdminGeneratePersonalDataURLParams {
	var ()
	return &AdminGeneratePersonalDataURLParams{

		Context: ctx,
	}
}

// NewAdminGeneratePersonalDataURLParamsWithHTTPClient creates a new AdminGeneratePersonalDataURLParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGeneratePersonalDataURLParamsWithHTTPClient(client *http.Client) *AdminGeneratePersonalDataURLParams {
	var ()
	return &AdminGeneratePersonalDataURLParams{
		HTTPClient: client,
	}
}

/*AdminGeneratePersonalDataURLParams contains all the parameters to send to the API endpoint
for the admin generate personal data url operation typically these are written to a http.Request
*/
type AdminGeneratePersonalDataURLParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Password
	  IAM password of the user

	*/
	Password string
	/*Namespace
	  namespace

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin generate personal data url params
func (o *AdminGeneratePersonalDataURLParams) WithTimeout(timeout time.Duration) *AdminGeneratePersonalDataURLParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin generate personal data url params
func (o *AdminGeneratePersonalDataURLParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin generate personal data url params
func (o *AdminGeneratePersonalDataURLParams) WithContext(ctx context.Context) *AdminGeneratePersonalDataURLParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin generate personal data url params
func (o *AdminGeneratePersonalDataURLParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin generate personal data url params
func (o *AdminGeneratePersonalDataURLParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin generate personal data url params
func (o *AdminGeneratePersonalDataURLParams) WithHTTPClient(client *http.Client) *AdminGeneratePersonalDataURLParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin generate personal data url params
func (o *AdminGeneratePersonalDataURLParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin generate personal data url params
func (o *AdminGeneratePersonalDataURLParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGeneratePersonalDataURLParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithPassword adds the password to the admin generate personal data url params
func (o *AdminGeneratePersonalDataURLParams) WithPassword(password string) *AdminGeneratePersonalDataURLParams {
	o.SetPassword(password)
	return o
}

// SetPassword adds the password to the admin generate personal data url params
func (o *AdminGeneratePersonalDataURLParams) SetPassword(password string) {
	o.Password = password
}

// WithNamespace adds the namespace to the admin generate personal data url params
func (o *AdminGeneratePersonalDataURLParams) WithNamespace(namespace string) *AdminGeneratePersonalDataURLParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin generate personal data url params
func (o *AdminGeneratePersonalDataURLParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRequestDate adds the requestDate to the admin generate personal data url params
func (o *AdminGeneratePersonalDataURLParams) WithRequestDate(requestDate string) *AdminGeneratePersonalDataURLParams {
	o.SetRequestDate(requestDate)
	return o
}

// SetRequestDate adds the requestDate to the admin generate personal data url params
func (o *AdminGeneratePersonalDataURLParams) SetRequestDate(requestDate string) {
	o.RequestDate = requestDate
}

// WithUserID adds the userID to the admin generate personal data url params
func (o *AdminGeneratePersonalDataURLParams) WithUserID(userID string) *AdminGeneratePersonalDataURLParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin generate personal data url params
func (o *AdminGeneratePersonalDataURLParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGeneratePersonalDataURLParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param password
	frPassword := o.Password
	fPassword := frPassword
	if fPassword != "" {
		if err := r.SetFormParam("password", fPassword); err != nil {
			return err
		}
	}

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
