// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package image

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

// NewDeleteAppImagesV1Params creates a new DeleteAppImagesV1Params object
// with the default values initialized.
func NewDeleteAppImagesV1Params() *DeleteAppImagesV1Params {
	var ()
	return &DeleteAppImagesV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteAppImagesV1ParamsWithTimeout creates a new DeleteAppImagesV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteAppImagesV1ParamsWithTimeout(timeout time.Duration) *DeleteAppImagesV1Params {
	var ()
	return &DeleteAppImagesV1Params{

		timeout: timeout,
	}
}

// NewDeleteAppImagesV1ParamsWithContext creates a new DeleteAppImagesV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteAppImagesV1ParamsWithContext(ctx context.Context) *DeleteAppImagesV1Params {
	var ()
	return &DeleteAppImagesV1Params{

		Context: ctx,
	}
}

// NewDeleteAppImagesV1ParamsWithHTTPClient creates a new DeleteAppImagesV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteAppImagesV1ParamsWithHTTPClient(client *http.Client) *DeleteAppImagesV1Params {
	var ()
	return &DeleteAppImagesV1Params{
		HTTPClient: client,
	}
}

/*DeleteAppImagesV1Params contains all the parameters to send to the API endpoint
for the delete app images v1 operation typically these are written to a http.Request
*/
type DeleteAppImagesV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *csmclientmodels.GeneratedDeleteAppImagesV1Request
	/*App
	  App Name

	*/
	App string
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

// WithTimeout adds the timeout to the delete app images v1 params
func (o *DeleteAppImagesV1Params) WithTimeout(timeout time.Duration) *DeleteAppImagesV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete app images v1 params
func (o *DeleteAppImagesV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete app images v1 params
func (o *DeleteAppImagesV1Params) WithContext(ctx context.Context) *DeleteAppImagesV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete app images v1 params
func (o *DeleteAppImagesV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete app images v1 params
func (o *DeleteAppImagesV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete app images v1 params
func (o *DeleteAppImagesV1Params) WithHTTPClient(client *http.Client) *DeleteAppImagesV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete app images v1 params
func (o *DeleteAppImagesV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete app images v1 params
func (o *DeleteAppImagesV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteAppImagesV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the delete app images v1 params
func (o *DeleteAppImagesV1Params) WithBody(body *csmclientmodels.GeneratedDeleteAppImagesV1Request) *DeleteAppImagesV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the delete app images v1 params
func (o *DeleteAppImagesV1Params) SetBody(body *csmclientmodels.GeneratedDeleteAppImagesV1Request) {
	o.Body = body
}

// WithApp adds the app to the delete app images v1 params
func (o *DeleteAppImagesV1Params) WithApp(app string) *DeleteAppImagesV1Params {
	o.SetApp(app)
	return o
}

// SetApp adds the app to the delete app images v1 params
func (o *DeleteAppImagesV1Params) SetApp(app string) {
	o.App = app
}

// WithNamespace adds the namespace to the delete app images v1 params
func (o *DeleteAppImagesV1Params) WithNamespace(namespace string) *DeleteAppImagesV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete app images v1 params
func (o *DeleteAppImagesV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteAppImagesV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param app
	if err := r.SetPathParam("app", o.App); err != nil {
		return err
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
