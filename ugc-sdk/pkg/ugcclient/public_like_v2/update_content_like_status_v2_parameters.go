// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_like_v2

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

// NewUpdateContentLikeStatusV2Params creates a new UpdateContentLikeStatusV2Params object
// with the default values initialized.
func NewUpdateContentLikeStatusV2Params() *UpdateContentLikeStatusV2Params {
	var ()
	return &UpdateContentLikeStatusV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateContentLikeStatusV2ParamsWithTimeout creates a new UpdateContentLikeStatusV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateContentLikeStatusV2ParamsWithTimeout(timeout time.Duration) *UpdateContentLikeStatusV2Params {
	var ()
	return &UpdateContentLikeStatusV2Params{

		timeout: timeout,
	}
}

// NewUpdateContentLikeStatusV2ParamsWithContext creates a new UpdateContentLikeStatusV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateContentLikeStatusV2ParamsWithContext(ctx context.Context) *UpdateContentLikeStatusV2Params {
	var ()
	return &UpdateContentLikeStatusV2Params{

		Context: ctx,
	}
}

// NewUpdateContentLikeStatusV2ParamsWithHTTPClient creates a new UpdateContentLikeStatusV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateContentLikeStatusV2ParamsWithHTTPClient(client *http.Client) *UpdateContentLikeStatusV2Params {
	var ()
	return &UpdateContentLikeStatusV2Params{
		HTTPClient: client,
	}
}

/*UpdateContentLikeStatusV2Params contains all the parameters to send to the API endpoint
for the update content like status v2 operation typically these are written to a http.Request
*/
type UpdateContentLikeStatusV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsContentLikeRequest
	/*ContentID
	  content ID

	*/
	ContentID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update content like status v2 params
func (o *UpdateContentLikeStatusV2Params) WithTimeout(timeout time.Duration) *UpdateContentLikeStatusV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update content like status v2 params
func (o *UpdateContentLikeStatusV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update content like status v2 params
func (o *UpdateContentLikeStatusV2Params) WithContext(ctx context.Context) *UpdateContentLikeStatusV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update content like status v2 params
func (o *UpdateContentLikeStatusV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update content like status v2 params
func (o *UpdateContentLikeStatusV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update content like status v2 params
func (o *UpdateContentLikeStatusV2Params) WithHTTPClient(client *http.Client) *UpdateContentLikeStatusV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update content like status v2 params
func (o *UpdateContentLikeStatusV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update content like status v2 params
func (o *UpdateContentLikeStatusV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateContentLikeStatusV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update content like status v2 params
func (o *UpdateContentLikeStatusV2Params) WithBody(body *ugcclientmodels.ModelsContentLikeRequest) *UpdateContentLikeStatusV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update content like status v2 params
func (o *UpdateContentLikeStatusV2Params) SetBody(body *ugcclientmodels.ModelsContentLikeRequest) {
	o.Body = body
}

// WithContentID adds the contentID to the update content like status v2 params
func (o *UpdateContentLikeStatusV2Params) WithContentID(contentID string) *UpdateContentLikeStatusV2Params {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the update content like status v2 params
func (o *UpdateContentLikeStatusV2Params) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the update content like status v2 params
func (o *UpdateContentLikeStatusV2Params) WithNamespace(namespace string) *UpdateContentLikeStatusV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update content like status v2 params
func (o *UpdateContentLikeStatusV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateContentLikeStatusV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param contentId
	if err := r.SetPathParam("contentId", o.ContentID); err != nil {
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
