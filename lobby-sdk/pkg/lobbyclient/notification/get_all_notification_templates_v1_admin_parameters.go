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
)

// NewGetAllNotificationTemplatesV1AdminParams creates a new GetAllNotificationTemplatesV1AdminParams object
// with the default values initialized.
func NewGetAllNotificationTemplatesV1AdminParams() *GetAllNotificationTemplatesV1AdminParams {
	var ()
	return &GetAllNotificationTemplatesV1AdminParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetAllNotificationTemplatesV1AdminParamsWithTimeout creates a new GetAllNotificationTemplatesV1AdminParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetAllNotificationTemplatesV1AdminParamsWithTimeout(timeout time.Duration) *GetAllNotificationTemplatesV1AdminParams {
	var ()
	return &GetAllNotificationTemplatesV1AdminParams{

		timeout: timeout,
	}
}

// NewGetAllNotificationTemplatesV1AdminParamsWithContext creates a new GetAllNotificationTemplatesV1AdminParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetAllNotificationTemplatesV1AdminParamsWithContext(ctx context.Context) *GetAllNotificationTemplatesV1AdminParams {
	var ()
	return &GetAllNotificationTemplatesV1AdminParams{

		Context: ctx,
	}
}

// NewGetAllNotificationTemplatesV1AdminParamsWithHTTPClient creates a new GetAllNotificationTemplatesV1AdminParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetAllNotificationTemplatesV1AdminParamsWithHTTPClient(client *http.Client) *GetAllNotificationTemplatesV1AdminParams {
	var ()
	return &GetAllNotificationTemplatesV1AdminParams{
		HTTPClient: client,
	}
}

/*GetAllNotificationTemplatesV1AdminParams contains all the parameters to send to the API endpoint
for the get all notification templates v1 admin operation typically these are written to a http.Request
*/
type GetAllNotificationTemplatesV1AdminParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the get all notification templates v1 admin params
func (o *GetAllNotificationTemplatesV1AdminParams) WithTimeout(timeout time.Duration) *GetAllNotificationTemplatesV1AdminParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get all notification templates v1 admin params
func (o *GetAllNotificationTemplatesV1AdminParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get all notification templates v1 admin params
func (o *GetAllNotificationTemplatesV1AdminParams) WithContext(ctx context.Context) *GetAllNotificationTemplatesV1AdminParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get all notification templates v1 admin params
func (o *GetAllNotificationTemplatesV1AdminParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get all notification templates v1 admin params
func (o *GetAllNotificationTemplatesV1AdminParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get all notification templates v1 admin params
func (o *GetAllNotificationTemplatesV1AdminParams) WithHTTPClient(client *http.Client) *GetAllNotificationTemplatesV1AdminParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get all notification templates v1 admin params
func (o *GetAllNotificationTemplatesV1AdminParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get all notification templates v1 admin params
func (o *GetAllNotificationTemplatesV1AdminParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetAllNotificationTemplatesV1AdminParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get all notification templates v1 admin params
func (o *GetAllNotificationTemplatesV1AdminParams) WithNamespace(namespace string) *GetAllNotificationTemplatesV1AdminParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get all notification templates v1 admin params
func (o *GetAllNotificationTemplatesV1AdminParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetAllNotificationTemplatesV1AdminParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
