// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package image_v2

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

// NewDeleteAppImagesV2Params creates a new DeleteAppImagesV2Params object
// with the default values initialized.
func NewDeleteAppImagesV2Params() *DeleteAppImagesV2Params {
	var ()
	return &DeleteAppImagesV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteAppImagesV2ParamsWithTimeout creates a new DeleteAppImagesV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteAppImagesV2ParamsWithTimeout(timeout time.Duration) *DeleteAppImagesV2Params {
	var ()
	return &DeleteAppImagesV2Params{

		timeout: timeout,
	}
}

// NewDeleteAppImagesV2ParamsWithContext creates a new DeleteAppImagesV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteAppImagesV2ParamsWithContext(ctx context.Context) *DeleteAppImagesV2Params {
	var ()
	return &DeleteAppImagesV2Params{

		Context: ctx,
	}
}

// NewDeleteAppImagesV2ParamsWithHTTPClient creates a new DeleteAppImagesV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteAppImagesV2ParamsWithHTTPClient(client *http.Client) *DeleteAppImagesV2Params {
	var ()
	return &DeleteAppImagesV2Params{
		HTTPClient: client,
	}
}

/*DeleteAppImagesV2Params contains all the parameters to send to the API endpoint
for the delete app images v2 operation typically these are written to a http.Request
*/
type DeleteAppImagesV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *csmclientmodels.GeneratedDeleteAppImagesV1Request
	/*App
	  App Name

	*/
	App string
	/*Namespace
	  Game Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete app images v2 params
func (o *DeleteAppImagesV2Params) WithTimeout(timeout time.Duration) *DeleteAppImagesV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete app images v2 params
func (o *DeleteAppImagesV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete app images v2 params
func (o *DeleteAppImagesV2Params) WithContext(ctx context.Context) *DeleteAppImagesV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete app images v2 params
func (o *DeleteAppImagesV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete app images v2 params
func (o *DeleteAppImagesV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete app images v2 params
func (o *DeleteAppImagesV2Params) WithHTTPClient(client *http.Client) *DeleteAppImagesV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete app images v2 params
func (o *DeleteAppImagesV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete app images v2 params
func (o *DeleteAppImagesV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteAppImagesV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the delete app images v2 params
func (o *DeleteAppImagesV2Params) WithBody(body *csmclientmodels.GeneratedDeleteAppImagesV1Request) *DeleteAppImagesV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the delete app images v2 params
func (o *DeleteAppImagesV2Params) SetBody(body *csmclientmodels.GeneratedDeleteAppImagesV1Request) {
	o.Body = body
}

// WithApp adds the app to the delete app images v2 params
func (o *DeleteAppImagesV2Params) WithApp(app string) *DeleteAppImagesV2Params {
	o.SetApp(app)
	return o
}

// SetApp adds the app to the delete app images v2 params
func (o *DeleteAppImagesV2Params) SetApp(app string) {
	o.App = app
}

// WithNamespace adds the namespace to the delete app images v2 params
func (o *DeleteAppImagesV2Params) WithNamespace(namespace string) *DeleteAppImagesV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete app images v2 params
func (o *DeleteAppImagesV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteAppImagesV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
