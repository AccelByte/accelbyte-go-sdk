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

// NewSendUsersTemplatedNotificationV1AdminParams creates a new SendUsersTemplatedNotificationV1AdminParams object
// with the default values initialized.
func NewSendUsersTemplatedNotificationV1AdminParams() *SendUsersTemplatedNotificationV1AdminParams {
	var ()
	return &SendUsersTemplatedNotificationV1AdminParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSendUsersTemplatedNotificationV1AdminParamsWithTimeout creates a new SendUsersTemplatedNotificationV1AdminParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSendUsersTemplatedNotificationV1AdminParamsWithTimeout(timeout time.Duration) *SendUsersTemplatedNotificationV1AdminParams {
	var ()
	return &SendUsersTemplatedNotificationV1AdminParams{

		timeout: timeout,
	}
}

// NewSendUsersTemplatedNotificationV1AdminParamsWithContext creates a new SendUsersTemplatedNotificationV1AdminParams object
// with the default values initialized, and the ability to set a context for a request
func NewSendUsersTemplatedNotificationV1AdminParamsWithContext(ctx context.Context) *SendUsersTemplatedNotificationV1AdminParams {
	var ()
	return &SendUsersTemplatedNotificationV1AdminParams{

		Context: ctx,
	}
}

// NewSendUsersTemplatedNotificationV1AdminParamsWithHTTPClient creates a new SendUsersTemplatedNotificationV1AdminParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSendUsersTemplatedNotificationV1AdminParamsWithHTTPClient(client *http.Client) *SendUsersTemplatedNotificationV1AdminParams {
	var ()
	return &SendUsersTemplatedNotificationV1AdminParams{
		HTTPClient: client,
	}
}

/*SendUsersTemplatedNotificationV1AdminParams contains all the parameters to send to the API endpoint
for the send users templated notification v1 admin operation typically these are written to a http.Request
*/
type SendUsersTemplatedNotificationV1AdminParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelNotificationWithTemplateRequestV1
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the send users templated notification v1 admin params
func (o *SendUsersTemplatedNotificationV1AdminParams) WithTimeout(timeout time.Duration) *SendUsersTemplatedNotificationV1AdminParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the send users templated notification v1 admin params
func (o *SendUsersTemplatedNotificationV1AdminParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the send users templated notification v1 admin params
func (o *SendUsersTemplatedNotificationV1AdminParams) WithContext(ctx context.Context) *SendUsersTemplatedNotificationV1AdminParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the send users templated notification v1 admin params
func (o *SendUsersTemplatedNotificationV1AdminParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the send users templated notification v1 admin params
func (o *SendUsersTemplatedNotificationV1AdminParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the send users templated notification v1 admin params
func (o *SendUsersTemplatedNotificationV1AdminParams) WithHTTPClient(client *http.Client) *SendUsersTemplatedNotificationV1AdminParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the send users templated notification v1 admin params
func (o *SendUsersTemplatedNotificationV1AdminParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the send users templated notification v1 admin params
func (o *SendUsersTemplatedNotificationV1AdminParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SendUsersTemplatedNotificationV1AdminParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the send users templated notification v1 admin params
func (o *SendUsersTemplatedNotificationV1AdminParams) WithBody(body *lobbyclientmodels.ModelNotificationWithTemplateRequestV1) *SendUsersTemplatedNotificationV1AdminParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the send users templated notification v1 admin params
func (o *SendUsersTemplatedNotificationV1AdminParams) SetBody(body *lobbyclientmodels.ModelNotificationWithTemplateRequestV1) {
	o.Body = body
}

// WithNamespace adds the namespace to the send users templated notification v1 admin params
func (o *SendUsersTemplatedNotificationV1AdminParams) WithNamespace(namespace string) *SendUsersTemplatedNotificationV1AdminParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the send users templated notification v1 admin params
func (o *SendUsersTemplatedNotificationV1AdminParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *SendUsersTemplatedNotificationV1AdminParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
