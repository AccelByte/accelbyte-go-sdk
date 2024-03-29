// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_group

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewUpdateGroupParams creates a new UpdateGroupParams object
// with the default values initialized.
func NewUpdateGroupParams() *UpdateGroupParams {
	var ()
	return &UpdateGroupParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateGroupParamsWithTimeout creates a new UpdateGroupParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateGroupParamsWithTimeout(timeout time.Duration) *UpdateGroupParams {
	var ()
	return &UpdateGroupParams{

		timeout: timeout,
	}
}

// NewUpdateGroupParamsWithContext creates a new UpdateGroupParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateGroupParamsWithContext(ctx context.Context) *UpdateGroupParams {
	var ()
	return &UpdateGroupParams{

		Context: ctx,
	}
}

// NewUpdateGroupParamsWithHTTPClient creates a new UpdateGroupParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateGroupParamsWithHTTPClient(client *http.Client) *UpdateGroupParams {
	var ()
	return &UpdateGroupParams{
		HTTPClient: client,
	}
}

/*UpdateGroupParams contains all the parameters to send to the API endpoint
for the update group operation typically these are written to a http.Request
*/
type UpdateGroupParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsCreateGroupRequest
	/*GroupID
	  group ID

	*/
	GroupID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update group params
func (o *UpdateGroupParams) WithTimeout(timeout time.Duration) *UpdateGroupParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update group params
func (o *UpdateGroupParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update group params
func (o *UpdateGroupParams) WithContext(ctx context.Context) *UpdateGroupParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update group params
func (o *UpdateGroupParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update group params
func (o *UpdateGroupParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update group params
func (o *UpdateGroupParams) WithHTTPClient(client *http.Client) *UpdateGroupParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update group params
func (o *UpdateGroupParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update group params
func (o *UpdateGroupParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateGroupParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update group params
func (o *UpdateGroupParams) WithBody(body *ugcclientmodels.ModelsCreateGroupRequest) *UpdateGroupParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update group params
func (o *UpdateGroupParams) SetBody(body *ugcclientmodels.ModelsCreateGroupRequest) {
	o.Body = body
}

// WithGroupID adds the groupID to the update group params
func (o *UpdateGroupParams) WithGroupID(groupID string) *UpdateGroupParams {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the update group params
func (o *UpdateGroupParams) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the update group params
func (o *UpdateGroupParams) WithNamespace(namespace string) *UpdateGroupParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update group params
func (o *UpdateGroupParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the update group params
func (o *UpdateGroupParams) WithUserID(userID string) *UpdateGroupParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the update group params
func (o *UpdateGroupParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateGroupParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
