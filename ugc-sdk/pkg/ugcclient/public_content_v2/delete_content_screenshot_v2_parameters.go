// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content_v2

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

// NewDeleteContentScreenshotV2Params creates a new DeleteContentScreenshotV2Params object
// with the default values initialized.
func NewDeleteContentScreenshotV2Params() *DeleteContentScreenshotV2Params {
	var ()
	return &DeleteContentScreenshotV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteContentScreenshotV2ParamsWithTimeout creates a new DeleteContentScreenshotV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteContentScreenshotV2ParamsWithTimeout(timeout time.Duration) *DeleteContentScreenshotV2Params {
	var ()
	return &DeleteContentScreenshotV2Params{

		timeout: timeout,
	}
}

// NewDeleteContentScreenshotV2ParamsWithContext creates a new DeleteContentScreenshotV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteContentScreenshotV2ParamsWithContext(ctx context.Context) *DeleteContentScreenshotV2Params {
	var ()
	return &DeleteContentScreenshotV2Params{

		Context: ctx,
	}
}

// NewDeleteContentScreenshotV2ParamsWithHTTPClient creates a new DeleteContentScreenshotV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteContentScreenshotV2ParamsWithHTTPClient(client *http.Client) *DeleteContentScreenshotV2Params {
	var ()
	return &DeleteContentScreenshotV2Params{
		HTTPClient: client,
	}
}

/*DeleteContentScreenshotV2Params contains all the parameters to send to the API endpoint
for the delete content screenshot v2 operation typically these are written to a http.Request
*/
type DeleteContentScreenshotV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ContentID
	  content ID

	*/
	ContentID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*ScreenshotID
	  screenshot ID

	*/
	ScreenshotID string
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

// WithTimeout adds the timeout to the delete content screenshot v2 params
func (o *DeleteContentScreenshotV2Params) WithTimeout(timeout time.Duration) *DeleteContentScreenshotV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete content screenshot v2 params
func (o *DeleteContentScreenshotV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete content screenshot v2 params
func (o *DeleteContentScreenshotV2Params) WithContext(ctx context.Context) *DeleteContentScreenshotV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete content screenshot v2 params
func (o *DeleteContentScreenshotV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete content screenshot v2 params
func (o *DeleteContentScreenshotV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete content screenshot v2 params
func (o *DeleteContentScreenshotV2Params) WithHTTPClient(client *http.Client) *DeleteContentScreenshotV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete content screenshot v2 params
func (o *DeleteContentScreenshotV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete content screenshot v2 params
func (o *DeleteContentScreenshotV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteContentScreenshotV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithContentID adds the contentID to the delete content screenshot v2 params
func (o *DeleteContentScreenshotV2Params) WithContentID(contentID string) *DeleteContentScreenshotV2Params {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the delete content screenshot v2 params
func (o *DeleteContentScreenshotV2Params) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the delete content screenshot v2 params
func (o *DeleteContentScreenshotV2Params) WithNamespace(namespace string) *DeleteContentScreenshotV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete content screenshot v2 params
func (o *DeleteContentScreenshotV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithScreenshotID adds the screenshotID to the delete content screenshot v2 params
func (o *DeleteContentScreenshotV2Params) WithScreenshotID(screenshotID string) *DeleteContentScreenshotV2Params {
	o.SetScreenshotID(screenshotID)
	return o
}

// SetScreenshotID adds the screenshotId to the delete content screenshot v2 params
func (o *DeleteContentScreenshotV2Params) SetScreenshotID(screenshotID string) {
	o.ScreenshotID = screenshotID
}

// WithUserID adds the userID to the delete content screenshot v2 params
func (o *DeleteContentScreenshotV2Params) WithUserID(userID string) *DeleteContentScreenshotV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete content screenshot v2 params
func (o *DeleteContentScreenshotV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteContentScreenshotV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param contentId
	if err := r.SetPathParam("contentId", o.ContentID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param screenshotId
	if err := r.SetPathParam("screenshotId", o.ScreenshotID); err != nil {
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
