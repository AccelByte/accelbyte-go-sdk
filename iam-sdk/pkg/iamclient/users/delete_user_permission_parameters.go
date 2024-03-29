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
)

// NewDeleteUserPermissionParams creates a new DeleteUserPermissionParams object
// with the default values initialized.
func NewDeleteUserPermissionParams() *DeleteUserPermissionParams {
	var ()
	return &DeleteUserPermissionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteUserPermissionParamsWithTimeout creates a new DeleteUserPermissionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteUserPermissionParamsWithTimeout(timeout time.Duration) *DeleteUserPermissionParams {
	var ()
	return &DeleteUserPermissionParams{

		timeout: timeout,
	}
}

// NewDeleteUserPermissionParamsWithContext creates a new DeleteUserPermissionParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteUserPermissionParamsWithContext(ctx context.Context) *DeleteUserPermissionParams {
	var ()
	return &DeleteUserPermissionParams{

		Context: ctx,
	}
}

// NewDeleteUserPermissionParamsWithHTTPClient creates a new DeleteUserPermissionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteUserPermissionParamsWithHTTPClient(client *http.Client) *DeleteUserPermissionParams {
	var ()
	return &DeleteUserPermissionParams{
		HTTPClient: client,
	}
}

/*DeleteUserPermissionParams contains all the parameters to send to the API endpoint
for the delete user permission operation typically these are written to a http.Request
*/
type DeleteUserPermissionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the delete user permission params
func (o *DeleteUserPermissionParams) WithTimeout(timeout time.Duration) *DeleteUserPermissionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete user permission params
func (o *DeleteUserPermissionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete user permission params
func (o *DeleteUserPermissionParams) WithContext(ctx context.Context) *DeleteUserPermissionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete user permission params
func (o *DeleteUserPermissionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete user permission params
func (o *DeleteUserPermissionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete user permission params
func (o *DeleteUserPermissionParams) WithHTTPClient(client *http.Client) *DeleteUserPermissionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete user permission params
func (o *DeleteUserPermissionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete user permission params
func (o *DeleteUserPermissionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteUserPermissionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithAction adds the action to the delete user permission params
func (o *DeleteUserPermissionParams) WithAction(action int64) *DeleteUserPermissionParams {
	o.SetAction(action)
	return o
}

// SetAction adds the action to the delete user permission params
func (o *DeleteUserPermissionParams) SetAction(action int64) {
	o.Action = action
}

// WithNamespace adds the namespace to the delete user permission params
func (o *DeleteUserPermissionParams) WithNamespace(namespace string) *DeleteUserPermissionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete user permission params
func (o *DeleteUserPermissionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithResource adds the resource to the delete user permission params
func (o *DeleteUserPermissionParams) WithResource(resource string) *DeleteUserPermissionParams {
	o.SetResource(resource)
	return o
}

// SetResource adds the resource to the delete user permission params
func (o *DeleteUserPermissionParams) SetResource(resource string) {
	o.Resource = resource
}

// WithUserID adds the userID to the delete user permission params
func (o *DeleteUserPermissionParams) WithUserID(userID string) *DeleteUserPermissionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete user permission params
func (o *DeleteUserPermissionParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteUserPermissionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
