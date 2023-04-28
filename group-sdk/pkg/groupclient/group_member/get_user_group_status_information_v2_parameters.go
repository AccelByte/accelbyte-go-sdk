// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group_member

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

// NewGetUserGroupStatusInformationV2Params creates a new GetUserGroupStatusInformationV2Params object
// with the default values initialized.
func NewGetUserGroupStatusInformationV2Params() *GetUserGroupStatusInformationV2Params {
	var ()
	return &GetUserGroupStatusInformationV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserGroupStatusInformationV2ParamsWithTimeout creates a new GetUserGroupStatusInformationV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserGroupStatusInformationV2ParamsWithTimeout(timeout time.Duration) *GetUserGroupStatusInformationV2Params {
	var ()
	return &GetUserGroupStatusInformationV2Params{

		timeout: timeout,
	}
}

// NewGetUserGroupStatusInformationV2ParamsWithContext creates a new GetUserGroupStatusInformationV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserGroupStatusInformationV2ParamsWithContext(ctx context.Context) *GetUserGroupStatusInformationV2Params {
	var ()
	return &GetUserGroupStatusInformationV2Params{

		Context: ctx,
	}
}

// NewGetUserGroupStatusInformationV2ParamsWithHTTPClient creates a new GetUserGroupStatusInformationV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserGroupStatusInformationV2ParamsWithHTTPClient(client *http.Client) *GetUserGroupStatusInformationV2Params {
	var ()
	return &GetUserGroupStatusInformationV2Params{
		HTTPClient: client,
	}
}

/*GetUserGroupStatusInformationV2Params contains all the parameters to send to the API endpoint
for the get user group status information v2 operation typically these are written to a http.Request
*/
type GetUserGroupStatusInformationV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*GroupID
	  Group ID

	*/
	GroupID string
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get user group status information v2 params
func (o *GetUserGroupStatusInformationV2Params) WithTimeout(timeout time.Duration) *GetUserGroupStatusInformationV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user group status information v2 params
func (o *GetUserGroupStatusInformationV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user group status information v2 params
func (o *GetUserGroupStatusInformationV2Params) WithContext(ctx context.Context) *GetUserGroupStatusInformationV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user group status information v2 params
func (o *GetUserGroupStatusInformationV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user group status information v2 params
func (o *GetUserGroupStatusInformationV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user group status information v2 params
func (o *GetUserGroupStatusInformationV2Params) WithHTTPClient(client *http.Client) *GetUserGroupStatusInformationV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user group status information v2 params
func (o *GetUserGroupStatusInformationV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user group status information v2 params
func (o *GetUserGroupStatusInformationV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithGroupID adds the groupID to the get user group status information v2 params
func (o *GetUserGroupStatusInformationV2Params) WithGroupID(groupID string) *GetUserGroupStatusInformationV2Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the get user group status information v2 params
func (o *GetUserGroupStatusInformationV2Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the get user group status information v2 params
func (o *GetUserGroupStatusInformationV2Params) WithNamespace(namespace string) *GetUserGroupStatusInformationV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user group status information v2 params
func (o *GetUserGroupStatusInformationV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user group status information v2 params
func (o *GetUserGroupStatusInformationV2Params) WithUserID(userID string) *GetUserGroupStatusInformationV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user group status information v2 params
func (o *GetUserGroupStatusInformationV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserGroupStatusInformationV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param groupId
	if err := r.SetPathParam("groupId", o.GroupID); err != nil {
		return err
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
