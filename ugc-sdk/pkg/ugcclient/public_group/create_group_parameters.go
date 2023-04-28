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

// NewCreateGroupParams creates a new CreateGroupParams object
// with the default values initialized.
func NewCreateGroupParams() *CreateGroupParams {
	var ()
	return &CreateGroupParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateGroupParamsWithTimeout creates a new CreateGroupParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateGroupParamsWithTimeout(timeout time.Duration) *CreateGroupParams {
	var ()
	return &CreateGroupParams{

		timeout: timeout,
	}
}

// NewCreateGroupParamsWithContext creates a new CreateGroupParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateGroupParamsWithContext(ctx context.Context) *CreateGroupParams {
	var ()
	return &CreateGroupParams{

		Context: ctx,
	}
}

// NewCreateGroupParamsWithHTTPClient creates a new CreateGroupParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateGroupParamsWithHTTPClient(client *http.Client) *CreateGroupParams {
	var ()
	return &CreateGroupParams{
		HTTPClient: client,
	}
}

/*CreateGroupParams contains all the parameters to send to the API endpoint
for the create group operation typically these are written to a http.Request
*/
type CreateGroupParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsCreateGroupRequest
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
}

// WithTimeout adds the timeout to the create group params
func (o *CreateGroupParams) WithTimeout(timeout time.Duration) *CreateGroupParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create group params
func (o *CreateGroupParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create group params
func (o *CreateGroupParams) WithContext(ctx context.Context) *CreateGroupParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create group params
func (o *CreateGroupParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create group params
func (o *CreateGroupParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create group params
func (o *CreateGroupParams) WithHTTPClient(client *http.Client) *CreateGroupParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create group params
func (o *CreateGroupParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create group params
func (o *CreateGroupParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create group params
func (o *CreateGroupParams) WithBody(body *ugcclientmodels.ModelsCreateGroupRequest) *CreateGroupParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create group params
func (o *CreateGroupParams) SetBody(body *ugcclientmodels.ModelsCreateGroupRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the create group params
func (o *CreateGroupParams) WithNamespace(namespace string) *CreateGroupParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create group params
func (o *CreateGroupParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the create group params
func (o *CreateGroupParams) WithUserID(userID string) *CreateGroupParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the create group params
func (o *CreateGroupParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *CreateGroupParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
