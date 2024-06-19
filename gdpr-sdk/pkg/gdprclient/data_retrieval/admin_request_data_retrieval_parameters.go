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

// NewAdminRequestDataRetrievalParams creates a new AdminRequestDataRetrievalParams object
// with the default values initialized.
func NewAdminRequestDataRetrievalParams() *AdminRequestDataRetrievalParams {
	var ()
	return &AdminRequestDataRetrievalParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminRequestDataRetrievalParamsWithTimeout creates a new AdminRequestDataRetrievalParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminRequestDataRetrievalParamsWithTimeout(timeout time.Duration) *AdminRequestDataRetrievalParams {
	var ()
	return &AdminRequestDataRetrievalParams{

		timeout: timeout,
	}
}

// NewAdminRequestDataRetrievalParamsWithContext creates a new AdminRequestDataRetrievalParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminRequestDataRetrievalParamsWithContext(ctx context.Context) *AdminRequestDataRetrievalParams {
	var ()
	return &AdminRequestDataRetrievalParams{

		Context: ctx,
	}
}

// NewAdminRequestDataRetrievalParamsWithHTTPClient creates a new AdminRequestDataRetrievalParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminRequestDataRetrievalParamsWithHTTPClient(client *http.Client) *AdminRequestDataRetrievalParams {
	var ()
	return &AdminRequestDataRetrievalParams{
		HTTPClient: client,
	}
}

/*AdminRequestDataRetrievalParams contains all the parameters to send to the API endpoint
for the admin request data retrieval operation typically these are written to a http.Request
*/
type AdminRequestDataRetrievalParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Password
	  IAM password of the user, required if admin requests their own data

	*/
	Password *string
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  IAM user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin request data retrieval params
func (o *AdminRequestDataRetrievalParams) WithTimeout(timeout time.Duration) *AdminRequestDataRetrievalParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin request data retrieval params
func (o *AdminRequestDataRetrievalParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin request data retrieval params
func (o *AdminRequestDataRetrievalParams) WithContext(ctx context.Context) *AdminRequestDataRetrievalParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin request data retrieval params
func (o *AdminRequestDataRetrievalParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin request data retrieval params
func (o *AdminRequestDataRetrievalParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin request data retrieval params
func (o *AdminRequestDataRetrievalParams) WithHTTPClient(client *http.Client) *AdminRequestDataRetrievalParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin request data retrieval params
func (o *AdminRequestDataRetrievalParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin request data retrieval params
func (o *AdminRequestDataRetrievalParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminRequestDataRetrievalParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithPassword adds the password to the admin request data retrieval params
func (o *AdminRequestDataRetrievalParams) WithPassword(password *string) *AdminRequestDataRetrievalParams {
	o.SetPassword(password)
	return o
}

// SetPassword adds the password to the admin request data retrieval params
func (o *AdminRequestDataRetrievalParams) SetPassword(password *string) {
	o.Password = password
}

// WithNamespace adds the namespace to the admin request data retrieval params
func (o *AdminRequestDataRetrievalParams) WithNamespace(namespace string) *AdminRequestDataRetrievalParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin request data retrieval params
func (o *AdminRequestDataRetrievalParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin request data retrieval params
func (o *AdminRequestDataRetrievalParams) WithUserID(userID string) *AdminRequestDataRetrievalParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin request data retrieval params
func (o *AdminRequestDataRetrievalParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminRequestDataRetrievalParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Password != nil {

		// form param password
		var frPassword string
		if o.Password != nil {
			frPassword = *o.Password
		}
		fPassword := frPassword
		if fPassword != "" {
			if err := r.SetFormParam("password", fPassword); err != nil {
				return err
			}
		}

	}

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
