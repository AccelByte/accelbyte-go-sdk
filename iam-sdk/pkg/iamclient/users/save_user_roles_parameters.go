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

// NewSaveUserRolesParams creates a new SaveUserRolesParams object
// with the default values initialized.
func NewSaveUserRolesParams() *SaveUserRolesParams {
	var ()
	return &SaveUserRolesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSaveUserRolesParamsWithTimeout creates a new SaveUserRolesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSaveUserRolesParamsWithTimeout(timeout time.Duration) *SaveUserRolesParams {
	var ()
	return &SaveUserRolesParams{

		timeout: timeout,
	}
}

// NewSaveUserRolesParamsWithContext creates a new SaveUserRolesParams object
// with the default values initialized, and the ability to set a context for a request
func NewSaveUserRolesParamsWithContext(ctx context.Context) *SaveUserRolesParams {
	var ()
	return &SaveUserRolesParams{

		Context: ctx,
	}
}

// NewSaveUserRolesParamsWithHTTPClient creates a new SaveUserRolesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSaveUserRolesParamsWithHTTPClient(client *http.Client) *SaveUserRolesParams {
	var ()
	return &SaveUserRolesParams{
		HTTPClient: client,
	}
}

/*SaveUserRolesParams contains all the parameters to send to the API endpoint
for the save user roles operation typically these are written to a http.Request
*/
type SaveUserRolesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User id

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the save user roles params
func (o *SaveUserRolesParams) WithTimeout(timeout time.Duration) *SaveUserRolesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the save user roles params
func (o *SaveUserRolesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the save user roles params
func (o *SaveUserRolesParams) WithContext(ctx context.Context) *SaveUserRolesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the save user roles params
func (o *SaveUserRolesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the save user roles params
func (o *SaveUserRolesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the save user roles params
func (o *SaveUserRolesParams) WithHTTPClient(client *http.Client) *SaveUserRolesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the save user roles params
func (o *SaveUserRolesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the save user roles params
func (o *SaveUserRolesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SaveUserRolesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the save user roles params
func (o *SaveUserRolesParams) WithBody(body []string) *SaveUserRolesParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the save user roles params
func (o *SaveUserRolesParams) SetBody(body []string) {
	o.Body = body
}

// WithNamespace adds the namespace to the save user roles params
func (o *SaveUserRolesParams) WithNamespace(namespace string) *SaveUserRolesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the save user roles params
func (o *SaveUserRolesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the save user roles params
func (o *SaveUserRolesParams) WithUserID(userID string) *SaveUserRolesParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the save user roles params
func (o *SaveUserRolesParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *SaveUserRolesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
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
