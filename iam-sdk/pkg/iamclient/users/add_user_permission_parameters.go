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
	"github.com/go-openapi/swag"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewAddUserPermissionParams creates a new AddUserPermissionParams object
// with the default values initialized.
func NewAddUserPermissionParams() *AddUserPermissionParams {
	var ()
	return &AddUserPermissionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAddUserPermissionParamsWithTimeout creates a new AddUserPermissionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAddUserPermissionParamsWithTimeout(timeout time.Duration) *AddUserPermissionParams {
	var ()
	return &AddUserPermissionParams{

		timeout: timeout,
	}
}

// NewAddUserPermissionParamsWithContext creates a new AddUserPermissionParams object
// with the default values initialized, and the ability to set a context for a request
func NewAddUserPermissionParamsWithContext(ctx context.Context) *AddUserPermissionParams {
	var ()
	return &AddUserPermissionParams{

		Context: ctx,
	}
}

// NewAddUserPermissionParamsWithHTTPClient creates a new AddUserPermissionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAddUserPermissionParamsWithHTTPClient(client *http.Client) *AddUserPermissionParams {
	var ()
	return &AddUserPermissionParams{
		HTTPClient: client,
	}
}

/*AddUserPermissionParams contains all the parameters to send to the API endpoint
for the add user permission operation typically these are written to a http.Request
*/
type AddUserPermissionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelUpdatePermissionScheduleRequest
	/*Action
	  Action (1..15)

	*/
	Action int64
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*Resource
	  Resource Name

	*/
	Resource string
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

// WithTimeout adds the timeout to the add user permission params
func (o *AddUserPermissionParams) WithTimeout(timeout time.Duration) *AddUserPermissionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the add user permission params
func (o *AddUserPermissionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the add user permission params
func (o *AddUserPermissionParams) WithContext(ctx context.Context) *AddUserPermissionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the add user permission params
func (o *AddUserPermissionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the add user permission params
func (o *AddUserPermissionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the add user permission params
func (o *AddUserPermissionParams) WithHTTPClient(client *http.Client) *AddUserPermissionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the add user permission params
func (o *AddUserPermissionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the add user permission params
func (o *AddUserPermissionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AddUserPermissionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the add user permission params
func (o *AddUserPermissionParams) WithBody(body *iamclientmodels.ModelUpdatePermissionScheduleRequest) *AddUserPermissionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the add user permission params
func (o *AddUserPermissionParams) SetBody(body *iamclientmodels.ModelUpdatePermissionScheduleRequest) {
	o.Body = body
}

// WithAction adds the action to the add user permission params
func (o *AddUserPermissionParams) WithAction(action int64) *AddUserPermissionParams {
	o.SetAction(action)
	return o
}

// SetAction adds the action to the add user permission params
func (o *AddUserPermissionParams) SetAction(action int64) {
	o.Action = action
}

// WithNamespace adds the namespace to the add user permission params
func (o *AddUserPermissionParams) WithNamespace(namespace string) *AddUserPermissionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the add user permission params
func (o *AddUserPermissionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithResource adds the resource to the add user permission params
func (o *AddUserPermissionParams) WithResource(resource string) *AddUserPermissionParams {
	o.SetResource(resource)
	return o
}

// SetResource adds the resource to the add user permission params
func (o *AddUserPermissionParams) SetResource(resource string) {
	o.Resource = resource
}

// WithUserID adds the userID to the add user permission params
func (o *AddUserPermissionParams) WithUserID(userID string) *AddUserPermissionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the add user permission params
func (o *AddUserPermissionParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AddUserPermissionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param action
	if err := r.SetPathParam("action", swag.FormatInt64(o.Action)); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param resource
	if err := r.SetPathParam("resource", o.Resource); err != nil {
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
