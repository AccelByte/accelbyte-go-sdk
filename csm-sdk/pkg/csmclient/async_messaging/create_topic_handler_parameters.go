// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package async_messaging

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
)

// NewCreateTopicHandlerParams creates a new CreateTopicHandlerParams object
// with the default values initialized.
func NewCreateTopicHandlerParams() *CreateTopicHandlerParams {
	var ()
	return &CreateTopicHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateTopicHandlerParamsWithTimeout creates a new CreateTopicHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateTopicHandlerParamsWithTimeout(timeout time.Duration) *CreateTopicHandlerParams {
	var ()
	return &CreateTopicHandlerParams{

		timeout: timeout,
	}
}

// NewCreateTopicHandlerParamsWithContext creates a new CreateTopicHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateTopicHandlerParamsWithContext(ctx context.Context) *CreateTopicHandlerParams {
	var ()
	return &CreateTopicHandlerParams{

		Context: ctx,
	}
}

// NewCreateTopicHandlerParamsWithHTTPClient creates a new CreateTopicHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateTopicHandlerParamsWithHTTPClient(client *http.Client) *CreateTopicHandlerParams {
	var ()
	return &CreateTopicHandlerParams{
		HTTPClient: client,
	}
}

/*CreateTopicHandlerParams contains all the parameters to send to the API endpoint
for the create topic handler operation typically these are written to a http.Request
*/
type CreateTopicHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *csmclientmodels.ApimodelCreateTopicRequest
	/*Namespace
	  Game Name

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the create topic handler params
func (o *CreateTopicHandlerParams) WithTimeout(timeout time.Duration) *CreateTopicHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create topic handler params
func (o *CreateTopicHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create topic handler params
func (o *CreateTopicHandlerParams) WithContext(ctx context.Context) *CreateTopicHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create topic handler params
func (o *CreateTopicHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create topic handler params
func (o *CreateTopicHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create topic handler params
func (o *CreateTopicHandlerParams) WithHTTPClient(client *http.Client) *CreateTopicHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create topic handler params
func (o *CreateTopicHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create topic handler params
func (o *CreateTopicHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateTopicHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create topic handler params
func (o *CreateTopicHandlerParams) WithBody(body *csmclientmodels.ApimodelCreateTopicRequest) *CreateTopicHandlerParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create topic handler params
func (o *CreateTopicHandlerParams) SetBody(body *csmclientmodels.ApimodelCreateTopicRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the create topic handler params
func (o *CreateTopicHandlerParams) WithNamespace(namespace string) *CreateTopicHandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create topic handler params
func (o *CreateTopicHandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateTopicHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
