// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package notification

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// NewNotificationWithTemplateByUserIDParams creates a new NotificationWithTemplateByUserIDParams object
// with the default values initialized.
func NewNotificationWithTemplateByUserIDParams() *NotificationWithTemplateByUserIDParams {
	var ()
	return &NotificationWithTemplateByUserIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewNotificationWithTemplateByUserIDParamsWithTimeout creates a new NotificationWithTemplateByUserIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewNotificationWithTemplateByUserIDParamsWithTimeout(timeout time.Duration) *NotificationWithTemplateByUserIDParams {
	var ()
	return &NotificationWithTemplateByUserIDParams{

		timeout: timeout,
	}
}

// NewNotificationWithTemplateByUserIDParamsWithContext creates a new NotificationWithTemplateByUserIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewNotificationWithTemplateByUserIDParamsWithContext(ctx context.Context) *NotificationWithTemplateByUserIDParams {
	var ()
	return &NotificationWithTemplateByUserIDParams{

		Context: ctx,
	}
}

// NewNotificationWithTemplateByUserIDParamsWithHTTPClient creates a new NotificationWithTemplateByUserIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewNotificationWithTemplateByUserIDParamsWithHTTPClient(client *http.Client) *NotificationWithTemplateByUserIDParams {
	var ()
	return &NotificationWithTemplateByUserIDParams{
		HTTPClient: client,
	}
}

/*NotificationWithTemplateByUserIDParams contains all the parameters to send to the API endpoint
for the notification with template by user id operation typically these are written to a http.Request
*/
type NotificationWithTemplateByUserIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelNotificationWithTemplateRequest
	/*Namespace
	  namespace

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

// WithTimeout adds the timeout to the notification with template by user id params
func (o *NotificationWithTemplateByUserIDParams) WithTimeout(timeout time.Duration) *NotificationWithTemplateByUserIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the notification with template by user id params
func (o *NotificationWithTemplateByUserIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the notification with template by user id params
func (o *NotificationWithTemplateByUserIDParams) WithContext(ctx context.Context) *NotificationWithTemplateByUserIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the notification with template by user id params
func (o *NotificationWithTemplateByUserIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the notification with template by user id params
func (o *NotificationWithTemplateByUserIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the notification with template by user id params
func (o *NotificationWithTemplateByUserIDParams) WithHTTPClient(client *http.Client) *NotificationWithTemplateByUserIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the notification with template by user id params
func (o *NotificationWithTemplateByUserIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the notification with template by user id params
func (o *NotificationWithTemplateByUserIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the notification with template by user id params
func (o *NotificationWithTemplateByUserIDParams) WithBody(body *lobbyclientmodels.ModelNotificationWithTemplateRequest) *NotificationWithTemplateByUserIDParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the notification with template by user id params
func (o *NotificationWithTemplateByUserIDParams) SetBody(body *lobbyclientmodels.ModelNotificationWithTemplateRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the notification with template by user id params
func (o *NotificationWithTemplateByUserIDParams) WithNamespace(namespace string) *NotificationWithTemplateByUserIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the notification with template by user id params
func (o *NotificationWithTemplateByUserIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the notification with template by user id params
func (o *NotificationWithTemplateByUserIDParams) WithUserID(userID string) *NotificationWithTemplateByUserIDParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the notification with template by user id params
func (o *NotificationWithTemplateByUserIDParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *NotificationWithTemplateByUserIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
