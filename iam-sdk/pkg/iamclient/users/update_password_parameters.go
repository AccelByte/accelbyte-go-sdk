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

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewUpdatePasswordParams creates a new UpdatePasswordParams object
// with the default values initialized.
func NewUpdatePasswordParams() *UpdatePasswordParams {
	var ()
	return &UpdatePasswordParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdatePasswordParamsWithTimeout creates a new UpdatePasswordParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdatePasswordParamsWithTimeout(timeout time.Duration) *UpdatePasswordParams {
	var ()
	return &UpdatePasswordParams{

		timeout: timeout,
	}
}

// NewUpdatePasswordParamsWithContext creates a new UpdatePasswordParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdatePasswordParamsWithContext(ctx context.Context) *UpdatePasswordParams {
	var ()
	return &UpdatePasswordParams{

		Context: ctx,
	}
}

// NewUpdatePasswordParamsWithHTTPClient creates a new UpdatePasswordParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdatePasswordParamsWithHTTPClient(client *http.Client) *UpdatePasswordParams {
	var ()
	return &UpdatePasswordParams{
		HTTPClient: client,
	}
}

/*UpdatePasswordParams contains all the parameters to send to the API endpoint
for the update password operation typically these are written to a http.Request
*/
type UpdatePasswordParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelUserPasswordUpdateRequest
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

// WithTimeout adds the timeout to the update password params
func (o *UpdatePasswordParams) WithTimeout(timeout time.Duration) *UpdatePasswordParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update password params
func (o *UpdatePasswordParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update password params
func (o *UpdatePasswordParams) WithContext(ctx context.Context) *UpdatePasswordParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update password params
func (o *UpdatePasswordParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update password params
func (o *UpdatePasswordParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update password params
func (o *UpdatePasswordParams) WithHTTPClient(client *http.Client) *UpdatePasswordParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update password params
func (o *UpdatePasswordParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update password params
func (o *UpdatePasswordParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdatePasswordParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update password params
func (o *UpdatePasswordParams) WithBody(body *iamclientmodels.ModelUserPasswordUpdateRequest) *UpdatePasswordParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update password params
func (o *UpdatePasswordParams) SetBody(body *iamclientmodels.ModelUserPasswordUpdateRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update password params
func (o *UpdatePasswordParams) WithNamespace(namespace string) *UpdatePasswordParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update password params
func (o *UpdatePasswordParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the update password params
func (o *UpdatePasswordParams) WithUserID(userID string) *UpdatePasswordParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the update password params
func (o *UpdatePasswordParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdatePasswordParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
